import csv
import sys

# compare two CSV files side-by-side based on a key field,
# usage:
#  python3 diff-csv-on-key.py data/fruits-1.csv data/fruits-2.csv name

file_1 = sys.argv[1]
file_2 = sys.argv[2]
# Define the key field to use for comparison
key_field = sys.argv[3]

# Open the two CSV files
with open(file_1, 'r') as file1, open(file_2, 'r') as file2:
    # Create DictReader objects for both files
    reader1 = csv.DictReader(file1)
    reader2 = csv.DictReader(file2)

    # Create dictionaries to hold the data from both CSV files
    data1 = {}
    data2 = {}

    # Iterate over each row of both CSV files
    for row in reader1:
        # Add the data to the dictionary using the key field as the key
        data1[row[key_field]] = row

    for row in reader2:
        # Add the data to the dictionary using the key field as the key
        data2[row[key_field]] = row

    # Compare the values of the corresponding keys in the dictionaries
    for key in data1.keys() & data2.keys():
        if data1[key] != data2[key]:
            # Print the differences
            #print('Key:', key)
            print(data1[key], data2[key])

