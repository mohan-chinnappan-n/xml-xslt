import csv
import json
import sys
import argparse

"""
---------------------------------------------------------------------------------------
 Takes in  a CSV file with  object records  , columns are API names of sobject fields
  writes out  a JSON file and plan file so you can load it using
    sfdx data:tree:import
- mchinnappan
---------------------------------------------------------------------------------------
"""

def csv_to_json(csv_file_path, json_file_path):
    # Read the CSV file
    with open(csv_file_path, 'r') as csv_file:
        csv_data = csv.DictReader(csv_file)
        # Convert CSV data to a list of dictionaries
        data_list = list(csv_data)


    #  Add extra key with nested object to each dictionary
    for i,data in enumerate(data_list, start=1):
        ref = f'{sobject}Ref{i}'
        data['attributes'] = { "type": sobject, "referenceId": ref }
    # Create a dictionary to wrap the JSON data
    wrapped_data = {'records': data_list}

    # Write JSON data to the output file
    with open(json_file_path, 'w') as json_file:
        json.dump(wrapped_data, json_file, indent=4)


#-------------------------------
# Create an ArgumentParser object
parser = argparse.ArgumentParser(description='Convert CSV to  Salesforce tree import JSON file and provide a plan file')
# Add command line arguments
parser.add_argument('--csv-file', help='path to the input CSV file')
parser.add_argument('--sobject', help='sobject')


# Parse the command line arguments
args = parser.parse_args()

# Provide the file paths for the CSV and JSON files
csv_file_path = args.csv_file #'input.csv'
json_file_path = f"{csv_file_path}.json"
plan_file_path = f"{json_file_path}-plan.json"
sobject = args.sobject
if  args.csv_file == None or  args.sobject == None:
    parser.print_usage()
    exit(0)
#----------------------------------


# Convert CSV to JSON
csv_to_json(csv_file_path, json_file_path)

# Write the plan file
plan =  [
    {
        "sobject": f"{sobject}",
        "saveRefs": True,
        "resolveRefs": False,
        "files": [
            f"{json_file_path}"
        ]
    }
]

with open(plan_file_path, 'w') as  plan_file:
   json.dump(plan, plan_file, indent=4)


print (f'Converion Done.\nImport data into your org with:   sfdx data:tree:import -u  $USERNAME -p {plan_file_path} ')

