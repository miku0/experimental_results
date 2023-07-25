import csv

dic_mecab = {}
with open("project2_counts_2.csv", 'r') as file:
    reader = csv.reader(file)
    data = list(reader)

# Create a dictionary from the first CSV file
for i in range(len(data)):
    dic_mecab[data[i][0]] = int(data[i][1])

with open("project2_counts_3.csv", 'r') as file:
    reader = csv.reader(file)
    data_trigger = list(reader)

output_rows = [["address", "trigger", "mecab"]]  # Create the header row

# Compare data from the second CSV file with the dictionary and collect the matched rows
for i in range(len(data_trigger)):
    if data_trigger[i][0] in dic_mecab:
        if (dic_mecab[data_trigger[i][0]] - int(data_trigger[i][1])) > 8:
            output_rows.append([data_trigger[i][0], int(data_trigger[i][1]), dic_mecab[data_trigger[i][0]]])

# Write the collected rows to a new CSV file
with open("diff_counts.csv", 'w', newline='') as csvfile:
    writer = csv.writer(csvfile)
    writer.writerows(output_rows)
