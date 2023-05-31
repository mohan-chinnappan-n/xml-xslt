import csv
import json
import sys
import argparse

"""
---------------------------------------------------------------------------------------
 Takes in  a CSV file with  object records  , columns are API names of sobject fields
  writes out  a JSON file
- mchinnappan
---------------------------------------------------------------------------------------
"""

def csv_to_json(csv_file_path, json_file_path):
    # Read the CSV file
    with open(csv_file_path, 'r') as csv_file:
        csv_data = csv.DictReader(csv_file)
        # Convert CSV data to a list of dictionaries
        data_list = list(csv_data)


    # Write JSON data to the output file
    with open(json_file_path, 'w') as json_file:
        json.dump(data_list, json_file, indent=4)


#-------------------------------
# Create an ArgumentParser object
parser = argparse.ArgumentParser(description='Convert CSV to   JSON file')
# Add command line arguments
parser.add_argument('--csv-file', help='path to the input CSV file')


# Parse the command line arguments
args = parser.parse_args()

# Provide the file paths for the CSV and JSON files
csv_file_path = args.csv_file #'input.csv'
json_file_path = f"{csv_file_path}.json"
if  args.csv_file == None :
    parser.print_usage()
    exit(0)
#----------------------------------


# Convert CSV to JSON
csv_to_json(csv_file_path, json_file_path)

print (f'Converion Done.\nJSON file:  {json_file_path} ')

