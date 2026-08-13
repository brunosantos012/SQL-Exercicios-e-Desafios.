 Desafio Extra (Nível Entrevista Júnior)

Responda estas perguntas no README do GitHub ou em um arquivo .md:

Pergunta 1

Por que foi necessário utilizar três tabelas para encontrar a categoria do produto?
Nos desafios em questão ultilizei 3 tabelas que foram elas :(DIMPRODUCT), (DIMPRODUCTCATEGORY) E (DIMPRODUCTSUBCATEGORY)
Para obter as informações necessarias para fazer a filtragem dos dados, tive ultilizar o INNER JOIN para conectar as tabelas e assim
Conseguir fazer a analise. 

Pergunta 2

Qual é a função da cláusula ON dentro do INNER JOIN?
Escrevemos INNER JOIN (E A TABELA QUE VAMOS CONECTAR) e depois escrevemos ON (E NOME DA TABELA) 
Para ai sim fazer de fato a conexão, na meu entendimento o ON funciona como um LIGAR a conexão entre as tabelas.

Pergunta 3

O que aconteceria se você removesse um dos INNER JOIN da consulta?
Daria erro na consulta como completo pois a tabela DIMPRODUCTSUBCATEGORY esta conectada a DIMPRODUCT e DIMPRODUCTCATEGORY esta conectada a
DIMPRODUCTSUBCATEGORY, todas elas estão conectadas.

Explique com suas palavras.