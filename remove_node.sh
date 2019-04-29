for ((i=${1};i<${2};i++));do
        echo "se0$i"
        echo "se0$i" >> tmp_log
        ssh se0${i} ${3} 2>> tmp_log
done;

exit;
