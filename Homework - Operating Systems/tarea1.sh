date +"%Y-%m-%d"

file_path="./archivo.txt"

texto='La Tarara, sí;
la tarara, no;
la Tarara, niña,
que la he visto yo.
Lleva la Tarara
un vestido verde
lleno de volantes
y de cascabeles.
La Tarara, sí;
la tarara, no;
la Tarara, niña,
que la he visto yo.
Luce mi Tarara
su cola de seda
sobre las retamas
y la hierbabuena.
Ay, Tarara loca.
Mueve, la cintura
para los muchachos
de las aceitunas.'

echo $texto > $file_path
	
tararaCount=$(cat $file_path | grep -o -i 'tarara' | wc -w)

echo $tararaCount

sed -i 's/tarara/parangaricutirimicuarolina/' $file_path

tail -n4 $file_path
