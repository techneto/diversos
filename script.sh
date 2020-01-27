#cp desenhando.svg 01.svg
#sed -i 's/$nome/Joaquim Neto/g' 01.svg 
#sed -i 's/$profissao/TECNICO EM REDES/g' 01.svg 
#sed -i 's/01\.jpeg/02\.png/g' 01.svg

while read linha
	do
#		echo $linha| cut -d , -f 1
		cp desenhando.svg $(echo $linha | cut -d , -f 4).svg
		sed -i "s/\$nome/$(echo $linha | cut -d , -f 1)/g" $(echo $linha | cut -d , -f 4).svg
		sed -i "s/\$profissao/$(echo $linha | cut -d , -f 2)/g" $(echo $linha | cut -d , -f 4).svg
		sed -i "s/01\.jpeg/$(echo $linha | cut -d , -f 3)/g" $(echo $linha | cut -d , -f 4).svg
	done < dados.csv
echo "Modificações feitas com suscesso!"
