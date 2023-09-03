import csv
import sys 
psv_file = sys.argv[1] 
csv_file =  f"{psv_file}.csv"

with open(psv_file, 'r') as psv_input, open(csv_file, 'w', newline='') as csv_output:
    psv_reader = csv.reader(psv_input, delimiter='|')
    csv_writer = csv.writer(csv_output)
    for row in psv_reader:
        csv_writer.writerow(row)

