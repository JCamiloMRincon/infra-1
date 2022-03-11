for word in $(cat lista_nombres)
do
if [ $word = "Juan" ]; then
echo Encontré a $word
else
let a=$a+1
fi
done
echo "La cantidad de nombres distintos a Juan es: $a"

