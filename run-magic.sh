chmod +x magic.sh

n=1

./magic.sh > output.txt 2>error.txt

while [ $? != 1 ]
do
    n=$(( $n + 1 ))
    ./magic.sh >> output.txt 2>>error.txt
done

echo $n
