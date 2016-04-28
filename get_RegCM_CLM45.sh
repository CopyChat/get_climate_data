#=================================================== 
# to get CLM45 data,
# ctang
#=================================================== 
#=================================================== 




ICTP_DATASITE="http://clima-dods.ictp.it/Data/RegCM_Data"
DIR=$(pwd)
for dir in inidata megan pftdata snicardata surface
do cd $dir
    wget -c ${ICTP_DATASITE}/CLM45/$dir/ -O - | wget -cA ".nc" -l1 --no-parent --base=${ICTP_DATASITE}/CLM45/$dir/ -nd -Fri -
    cd $DIR
done
