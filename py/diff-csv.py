import csv
import sys

# Compare two CSV files side-by-side 
# usage
#   python3 diff-csv.py data/fruits-1.csv data/fruits-2.csv

file_1 = sys.argv[1]
file_2 = sys.argv[2]
# Open the two CSV files
with open(file_1, 'r') as file1, open(file_2, 'r') as file2:
    # Create CSV reader objects for both files
    reader1 = csv.reader(file1)
    reader2 = csv.reader(file2)

    # Iterate over each row of both CSV files
    # zip is used iterate over each row of both CSV files simultaneously
    # creates an iterator that aggregates the elements from each iterable (in this case, the two CSV reader objects).
    for row1, row2 in zip(reader1, reader2):
        # Compare the corresponding values of each row
        if row1 != row2:
            # Print the differences
            print(row1, row2)
