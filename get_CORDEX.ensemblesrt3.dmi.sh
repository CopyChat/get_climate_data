#!/bin/bash - 
#===============================================================================
#
#          FILE: get_CORDEX.sh
# 
USAGE="./get_CORDEX.sh  "
# 
#   DESCRIPTION:   to get cordex data
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Tang (Tang), chao.tang.1@gmail.com
#  ORGANIZATION: le2p
#       CREATED: 03/15/16 17:38:11 MUT
#      REVISION:  ---
#===============================================================================

#set -o nounset                             # Treat unset variables as an error
shopt -s extglob 							# "shopt -u extglob" to turn it off
source ~/Shell/functions.sh      			# TANG's shell functions.sh
#=================================================== 


VARIABLE=(\
    "clt" \
    #"hfls" \
    #"hfss" \
    #"hus850" \
    #"huss" \
    #"mrro" \
    #"mrros" \
    "pr" \
    #"psl" \
    #"rlds" \
    #"rlus" \
    #"rlut" \
    "rsds" \
    #"rsdt" \
    #"rsus" \
    #"rsut" \
    #"sfcWind" \
    #"sfcWindmax" \
    #"sic" \
    #"snd" \
    #"snm" \
    #"snw" \
    #"ta200" \
    #"ta500" \
    #"ta850" \
    "tas" \
    #"tasmax" \
    #"tasmin" \
    #"ua200" \
    #"ua500" \
    #"ua850" \
    #"uas" \
    #"va200" \
    #"va500" \
    #"va850" \
    #"vas" \
    #"zg200" \
    #"zg500" \
    )

LOCATION='http://ensemblesrt3.dmi.dk/data/CORDEX/AFR-44'

#Example: http://ensemblesrt3.dmi.dk/data/CORDEX/AFR-44/
#          UQAM/MPI-M-MPI-ESM-LR/historical/r1i1p1/UQAM-CRCM5/v1/mon/clt/v20150616/*.nc

ADDRESS=(\
    "$LOCATION/DMI/ECMWF-ERAINT/evaluation/r1i1p1/DMI-HIRHAM5/v2/mon/" \
    "$LOCATION/DMI/ICHEC-EC-EARTH/historical/r3i1p1/DMI-HIRHAM5/v2/mon/" \
    "$LOCATION/DMI/ICHEC-EC-EARTH/rcp85/r3i1p1/DMI-HIRHAM5/v2/mon/" \
    "$LOCATION/DMI/NCC-NorESM1-M/historical/r1i1p1/DMI-HIRHAM5/v1/mon/" \
    "$LOCATION/DMI/NCC-NorESM1-M/rcp85/r1i1p1/DMI-HIRHAM5/v1/mon/" \

    "$LOCATION/KNMI/ECMWF-ERAINT/evaluation/r1i1p1/KNMI-RACMO22T/v1/mon/" \
    "$LOCATION/KNMI/ICHEC-EC-EARTH/historical/r1i1p1/KNMI-RACMO22T/v1/mon/" \
    "$LOCATION/KNMI/ICHEC-EC-EARTH/rcp85/r1i1p1/KNMI-RACMO22T/v1/mon/" \
    "$LOCATION/KNMI/MOHC-HadGEM2-ES/historical/r1i1p1/KNMI-RACMO22T/v1/mon/" \
    "$LOCATION/KNMI/MOHC-HadGEM2-ES/rcp85/r1i1p1/KNMI-RACMO22T/v1/mon/" \
    
    "$LOCATION/UQAM/ECMWF-ERAINT/evaluation/r1i1p1/UQAM-CRCM5/v1/mon/" \
    "$LOCATION/UQAM/CCCma-CanESM2/historical/r1i1p1/UQAM-CRCM5/v1/mon/" \
    "$LOCATION/UQAM/MPI-M-MPI-ESM-LR/historical/r1i1p1/UQAM-CRCM5/v1/mon/" \
    )



for var in ${VARIABLE[*]}
do
    for add in ${ADDRESS[*]}
    do
        echo "wget -c --mirror --reject=index.html ${add}$var/"
        wget -c --mirror --no-parent ${add}$var/
    done
done



