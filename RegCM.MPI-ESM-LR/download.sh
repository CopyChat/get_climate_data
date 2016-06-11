wget -e use_proxy=yes -e ftp_proxy=http://runcache.univ-reunion.fr:8080/ ftp://ftp.ucar.edu/pub/cisl/bukovsky/MPI-ESM-LR/fixed.tar 


for year in $(seq -s " " 1995 2005)
do
	for var in ta hus va ua
	do
		echo "wget -e use_proxy=yes -e ftp_proxy=http://runcache.univ-reunion.fr:8080/ ftp://ftp.ucar.edu/pub/cisl/bukovsky/MPI-ESM-LR/RF/$var/*$year*.gz ./"
		wget -e use_proxy=yes -e ftp_proxy=http://runcache.univ-reunion.fr:8080/ ftp://ftp.ucar.edu/pub/cisl/bukovsky/MPI-ESM-LR/RF/$var/*$year*.gz ./
	done
done
