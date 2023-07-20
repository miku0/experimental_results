#!/bin/bash
address_dat=~/nominatim-planet2/address_1000.dat

echo "check_address normal"
python3 ~/nominatim-planet/run_check_address.py $address_dat

echo "check_address 1"
mv ~/Nominatim/nominatim/api/search/icu_tokenizer.py ~/Nominatim/nominatim/api/search/icu_tokenizer_normal.py
mv ~/Nominatim/nominatim/api/search/icu_tokenizer_tmp.py ~/Nominatim/nominatim/api/search/icu_tokenizer.py
python3 ~/nominatim-planet2/run_check_address.py $address_dat
mv ~/results_data/project2_zero.csv ~/results_data/project2_zero_1.csv
mv ~/results_data/project2_counts.csv ~/results_data/project2_counts_1.csv

echo "check_address 2"
mv ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese.py ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese_1.py
mv ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese_2.py ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese.py
python3 ~/nominatim-planet2/run_check_address.py $address_dat
mv ~/results_data/project2_zero.csv ~/results_data/project2_zero_2.csv
mv ~/results_data/project2_counts.csv ~/results_data/project2_counts_2.csv

echo "check_address 3"
mv ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese.py ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese_2.py
mv ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese_3.py ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese.py
python3 ~/nominatim-planet2/run_check_address.py $address_dat
mv ~/results_data/project2_zero.csv ~/results_data/project2_zero_3.csv
mv ~/results_data/project2_counts.csv ~/results_data/project2_counts_3.csv

echo "finish check address"
mv ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese.py ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese_3.py
mv ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese_1.py ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese.py
mv ~/Nominatim/nominatim/api/search/icu_tokenizer.py ~/Nominatim/nominatim/api/search/icu_tokenizer_tmp.py
mv ~/Nominatim/nominatim/api/search/icu_tokenizer_normal.py ~/Nominatim/nominatim/api/search/icu_tokenizer.py

echo "search address normal"
python3 ~/nominatim-planet/run_search4.py $address_dat

echo "search_address 1"
mv ~/Nominatim/nominatim/api/search/icu_tokenizer.py ~/Nominatim/nominatim/api/search/icu_tokenizer_normal.py
mv ~/Nominatim/nominatim/api/search/icu_tokenizer_tmp.py ~/Nominatim/nominatim/api/search/icu_tokenizer.py
python3 ~/nominatim-planet2/run_search4.py $address_dat
mv ~/results_data/project2_search.csv ~/results_data/project2_search_1.csv

echo "search_address 2"
mv ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese.py ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese_1.py
mv ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese_2.py ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese.py
python3 ~/nominatim-planet2/run_search4.py $address_dat
mv ~/results_data/project2_search.csv ~/results_data/project2_search_2.csv

echo "search_address 3"
mv ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese.py ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese_2.py
mv ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese_3.py ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese.py
python3 ~/nominatim-planet2/run_search4.py $address_dat
mv ~/results_data/project2_search.csv ~/results_data/project2_search_3.csv

echo "finish search address"
mv ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese.py ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese_3.py
mv ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese_1.py ~/Nominatim/nominatim/api/search/icu_tokenizer_japanese.py
mv ~/Nominatim/nominatim/api/search/icu_tokenizer.py ~/Nominatim/nominatim/api/search/icu_tokenizer_tmp.py
mv ~/Nominatim/nominatim/api/search/icu_tokenizer_normal.py ~/Nominatim/nominatim/api/search/icu_tokenizer.py
