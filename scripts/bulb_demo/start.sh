MY_CURRENT_PATH="`dirname \"$0\"`"
#home first
$MY_CURRENT_PATH/home.sh
$MY_CURRENT_PATH/imp_medium.sh
sleep 1.5
#impedance mode start
$MY_CURRENT_PATH/impmode.sh
#record current pos as grasp
$MY_CURRENT_PATH/rec_grasp.sh
for i in {1..12}
do
#synchronous home
$MY_CURRENT_PATH/grasp.sh
sleep 0.5
#sleep 0.8
#grasp
$MY_CURRENT_PATH/impmode.sh
sleep 0.2
#$MY_CURRENT_PATH/imp_medium.sh
#sleep 0.2
#for j in {1..3}
#do
#$MY_CURRENT_PATH/rotate_medium.sh
#sleep 0.1
#$MY_CURRENT_PATH/rotate_medium.sh
#sleep 0.1
$MY_CURRENT_PATH/rotate_extr_large.sh
#sleep 0.3
#$MY_CURRENT_PATH/rotate_small.sh &
#sleep 0.2
#done
#$MY_CURRENT_PATH/imp_medium.sh
sleep 0.2
$MY_CURRENT_PATH/release.sh
sleep 0.5 
$MY_CURRENT_PATH/home.sh
sleep 1.0

done
$MY_CURRENT_PATH/imp_large.sh
for i in {1..2}
do
$MY_CURRENT_PATH/grasp.sh
sleep 0.5
#grasp
$MY_CURRENT_PATH/impmode.sh
#sleep 0.2
#$MY_CURRENT_PATH/imp_medium.sh
#sleep 0.2
$MY_CURRENT_PATH/rotate_extr_large.sh
sleep 0.3
#done
#$MY_CURRENT_PATH/imp_medium.sh
#sleep 0.2
$MY_CURRENT_PATH/release.sh
sleep 0.5 
$MY_CURRENT_PATH/home.sh
sleep 1.0
done
$MY_CURRENT_PATH/home.sh
