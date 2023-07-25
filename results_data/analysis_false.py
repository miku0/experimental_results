import csv

set_no_address_trigger = set()
with open("project2_zero_3.csv", 'r') as file:
    reader = csv.reader(file)
    data = list(reader)

# Create a set from the first CSV file
for i in range(len(data)):
    set_no_address_trigger.add(data[i][0])

set_address_mecab = set()
with open("project2_counts_2.csv", 'r') as file:
    reader = csv.reader(file)
    data_mecab = list(reader)

# Create a set from the second CSV file
for i in range(len(data_mecab)):
    set_address_mecab.add(data_mecab[i][0])

# Find common elements in both sets
common_elements = set_no_address_trigger.intersection(set_address_mecab)

# Write the common elements to a new CSV file
with open("common_elements.csv", 'w', newline='') as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(["Common Elements"])
    for element in common_elements:
        writer.writerow([element])
