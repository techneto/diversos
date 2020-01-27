#!/bin/bash

#
#AUTHOR JOAQUIM BARTOLOMEU FERREIRA NETO
#MEU CANAL NO YOUTUBE https://www.youtube.com/channel/UCQeu-TOpmVrZSFSPUN65BPA
#

############### OBSERVAÇÕES ###################
#ARQUIVOS DE EXEMPLO DISPONIBLIZADOS, O DADOS.CSV É UMA
#PLANILHA COM AS INFORMAÇÕES DOS ARQUIVOS QUE SERÃO GERADOS COM O SCRIPT

#ARQUIVOS MODELO FEITO NO INKSCAPE E COLOCADOS DENTRO DO MESMO DIRETÓRIO DESENHANDO.SVG
	
#VOCÊ PODE FAZER UM ARQUIVO CSV COM ALGUM EDITOR DE PLANILHAS

while read linha
	do
		#COPIA O ARQUIVO MODELO COM A ID DA PLANILHA
		cp desenhando.svg $(echo $linha | cut -d , -f 4).svg 
		
		#SUBSTITUI O NOME DO ARQUIVO PELO ARQUIVO DA PLANILHA
		sed -i "s/\$nome/$(echo $linha | cut -d , -f 1)/g" $(echo $linha | cut -d , -f 4).svg
		
		#SUBSTITUI A PROFISSÃO PELA PROFISSÃO DA PLANILHA
		sed -i "s/\$profissao/$(echo $linha | cut -d , -f 2)/g" $(echo $linha | cut -d , -f 4).svg
		
		#SUBSTITUI O ARQUIVO DA FOTO PELA FOTO DA PLANILHA
		sed -i "s/01\.jpeg/$(echo $linha | cut -d , -f 3)/g" $(echo $linha | cut -d , -f 4).svg
	done < dados.csv #ARQUIVO QUE SERÁ FEITO O LOOPING
