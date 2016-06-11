#!/bin/bash - 
#===============================================================================
#
#          FILE: ta.sh
# 
#         USAGE: ./ta.sh 
# 
#   DESCRIPTION: G 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Tang (Tang), tangchao90908@sina.com
#  ORGANIZATION: KLA
#       CREATED: 06/09/16 10:42:21 RET
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

v='ta'
file=''$v'.list'

echo $file
line=$(cat $file | wc -l)
echo $line

for i in $(seq -s " " 1 $line)
do
	echo $i
	target=$(awk 'NR=='$i'{print $2}' $file)
	echo "downloading =============================  $target"
	wget -e use_proxy=yes -e ftp_proxy=http://runcache.univ-reunion.fr:8080/ \
		ftp://ftp.ucar.edu/pub/cisl/bukovsky/MPI-ESM-LR/RF/$v/$target ./
done
exit
