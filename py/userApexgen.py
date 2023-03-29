#!/usr/local/bin/python3

"""
Script to generate apex code for user loading
Usage: python3 userApexgen.py <userDataCSVFile>
- mchinnappan

"""
import csv
import sys

# Sample CSV
"""
"Username","LastName","FirstName","Email","Alias","LocaleSidKey","LanguageLocaleKey","EmailEncodingKey","TimeZoneSidKey","ProfileName"
"gfe@gnu.org.sel","Garderner","Joe","jg@gnu.org.invalid","jg","en_US","en_US","ISO-8859-1","America/New_York","Standard Platform User"
"xyz@gnu.org.sel","Smith","Joe","xyz@gnu.org.invalid","jsmith","en_US","en_US","ISO-8859-1","America/New_York","Standard Platform User"
"""
apexCode = """List<User> users = new List<User>(); """
if (len(sys.argv) < 2):
	print ("Usage: python3 userApexgen.py <userDataCSVFile>")
	sys.exit(0)


userfile = sys.argv[1] # csv input file with user data

with open(userfile, newline='') as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
    	apexCode +=  f"""
      users.add( new User (
      Username = '{row["Username"]}', 
      Email = '{row["Email"]}',
      FirstName = '{row["FirstName"]}',
      LastName = '{row["LastName"]}',
      Alias = '{row["Alias"]}',
      TimeZoneSidKey = '{row["TimeZoneSidKey"]}',
      LocaleSidKey = '{row["LocaleSidKey"]}',
      EmailEncodingKey = '{row["EmailEncodingKey"]}',
      ProfileId = [SELECT Id FROM Profile WHERE Name ='{row["ProfileName"]}'  LIMIT 1].Id, 
      LanguageLocaleKey = '{row["LanguageLocaleKey"]}'
    ));



"""
apexCode += "Insert users;" 
print(apexCode)
