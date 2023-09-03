import csv
import sys
import html

def csv_to_html_table(csv_file, output_file):
    with open(csv_file, 'r') as file:
        reader = csv.reader(file)
        rows = list(reader)
    with open(output_file, 'w') as file:
        file.write('<table border="1">\n')

        for row in rows:
            file.write('<tr>\n')
            for cell in row:
                # Escape special characters and preserve line breaks
                cell = html.escape(cell).replace('\n', '<br>')
                file.write(f'<td>{cell}</td>\n')
            file.write('</tr>\n')

        file.write('</table>\n')

# Usage example
csv_input_file = sys.argv[1]
output_file = f"{csv_input_file}.html"


csv_to_html_table(csv_input_file, output_file)

