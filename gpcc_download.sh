# Copyright 2021 ARC Centre of Excellence for Climate Extremes 
#
# author: Paola Petrelli <paola.petrelli@utas.edu.au>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# This script is used to download, checksum and update the GPCC dataset on
# the NCI server
# Data is downloaded from the Global Precipitation Climatology Centre data server
#     https://opendata.dwd.de/climate_environment/GPCC
# Data is available as monthly (0.25, 0.5, 1.0, 2.5 deg) and daily files (1.0 deg),
# updated occasionally when a new version is released
# Current version is v2020
#
# The dataset is stored in 
#     /g/data/ia39/gpcc/data/full_data_<frequency>_<version>/<grid>/<files>
# where <grid> is the grid resolution 025, 05, 10, 25 respectively for 0.25, 0.5, 1.0, 2.5 degrees
#
# To run the script ./gpcc_download.sh 
# record of updated files is kept in /g/data/ia39/aus-ref-clim-data-nci/gpcc/data/update_log.txt
#
# Last change:
# 2021-12-22
# 2022-04-07 - Move directory
# 2022-04-12 - remove replica folder and introduce $AUSREFDIR

url=https://opendata.dwd.de/climate_environment/GPCC/full_data
root_dir=${AUSREFDIR:-/g/data/ia39/aus-ref-clim-data-nci}
data_dir=${root_dir}/gpcc/data/full_data
code_dir=${root_dir}/gpcc/data/full_data
today=$(date "+%Y-%m-%d")
# wget flags
# -np no parent directories
# -nd download only files
# -S keep remote timestamp
# -N download only if remote timestamp more recent
for grid in 025 05 10 25; do
    wget -r -np -nd -N -S -R "index.html*" -P ${data_dir}_monthly_v2020/${grid} ${url}_monthly_v2020/${grid}/
    for f in $(ls ${data_dir}_monthly_v2020/${grid}/*.gz); do
	    gunzip $f
    done
done
wget -r -np -nd -N -S -R "index.html*" -P ${data_dir}_daily_v2020/10 ${url}_daily_v2020/ 
for f in $(ls ${data_dir}_daily_v2020/10/*.gz); do
    gunzip $f
done
echo "Updated on ${today} by ${USER}" >> ${code_dir}/update_log.txt 
