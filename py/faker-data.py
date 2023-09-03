# pip install Faker
from faker import Faker
from faker.providers import internet
import sys

fake = Faker()
fake.add_provider(internet)

usage = """ 
Usage:
python fake-data.py how_many
"""

if  len(sys.argv) < 2:
    print (f"{usage}")
    exit(0)

count = sys.argv[1] or 2;
for  index, value  in enumerate(range(int(count))):
    print(f"{index},{fake.name()}, {fake.address().strip()}, {fake.ipv4_private()}")
