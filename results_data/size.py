import csv
import sys
#filename = sys.argv[1]
file_zero = ["project_zero.csv", "project2_zero_1.csv", "project2_zero_2.csv", "project2_zero_3.csv"]
file_counts = ["project_counts.csv", "project2_counts_1.csv", "project2_counts_2.csv", "project2_counts_3.csv"]

# read csv file
def num_csv(filename):
    with open(filename, 'r') as file:
        reader = csv.reader(file)
        data = list(reader)
    row_count = len(data)
    column_count = len(data[0])
    print("row:", row_count)
    #print("column:", column_count)

def read_csv(filename):
    with open(filename, 'r') as file:
        reader = csv.reader(file)
        data = list(reader)
    return data

def cal_ratio(data1, data2):
    print(len(data2)/(len(data1)+len(data2))*100,"%")

for i in range(len(file_zero)):
    print("ratio",i)
    cal_ratio(read_csv(file_zero[i]),read_csv(file_counts[i]))


'''
print("zero")
for i in range(len(file_zero)):
    print(i, file_zero[i])
    num_csv(file_zero[i])
print("counts")
for i in range(len(file_counts)):
    print(i,file_counts[i])
    num_csv(file_counts[i])
'''
