#!/bin/bash - 
#===============================================================================
#
#          FILE: up2titan.sh
# 
USAGE="./up2titan.sh  "
# 
#   DESCRIPTION:  
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Tang (Tang), chao.tang.1@gmail.com
#  ORGANIZATION: le2p
#       CREATED: 03/16/16 08:58:43 MUT
#      REVISION:  ---
#===============================================================================

#set -o nounset                             # Treat unset variables as an error
shopt -s extglob 							# "shopt -u extglob" to turn it off
source ~/Shell/functions.sh      			# TANG's shell functions.sh

#=================================================== 
rsync -acvrhSPH $(pwd) ctang@titan.univ.run:/worktmp2/RegCM_DATA/MODEL_DATA/CORDEX
