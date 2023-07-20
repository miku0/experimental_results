import random
import subprocess
import time
import sys
import csv

address_file = sys.argv[1]
command_template = "/usr/local/bin/nominatim search --query '{}' --format debug | grep -c '\. Search:'"
query_placeholder = '神奈川県幸区南加瀬3丁目8-33'
#num_addresses = 2

# read addresses
with open(address_file, 'r', encoding='utf-8') as file:
    selected_addresses = [line.strip() for line in file.readlines()]

# run the command of query
start_time = time.time()
results = []
for address in selected_addresses:
    command = command_template.format(address)
    try:
        output = subprocess.check_output(command, shell=True, stderr=subprocess.DEVNULL).decode("utf-8").strip()
        result = int(output.split("\n")[-1])
        #print(f'address: {address}\t result: {result}件')
        results.append(f'{address} {result}')
    except subprocess.CalledProcessError:
        results.append(f'{address} false')
        #print(f'address: {address}\t false')
end_time = time.time()
elapsed_time = end_time - start_time
print(f"time: {elapsed_time}sec.")

with open('/home/miku/results_data/project_search.csv', 'w', encoding='utf-8', newline='') as file:
    writer = csv.writer(file)
    writer.writerows([line.split() for line in results])
