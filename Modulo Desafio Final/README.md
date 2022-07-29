## Desafio Final

Enunciado I

Uma rede de supermercados viu a necessidade de criar uma maneira de entender e
conhecer mais o seu público-alvo. Diante desse desafio, a rede precisa criar um processo
de Big Data para auxiliar essa análise. Ela quer conhecer seu cliente como um todo, das
compras que foram realizadas aos produtos mais vendidos, e dessa forma criar uma
estrutura que permita tomar decisões mais assertivas.
Os analistas de Big Data da rede identificaram que é necessário desenvolver um
processo bem elaborado para transformar dados variados em informações úteis. Para
isso é necessário:

1. Coletar dados em diversas fontes;
2. Armazenar os dados em um repositório;
3. Realizar análises de dados coletados;
4. Criar modelo analítico de Machine Learning;
5. Criar visualizações para os dados processados.

Para esse primeiro momento, vamos analisar os dados e realizar um agrupamento dos
clientes baseados em algumas características que eles possuem.
As compras foram separadas por usuário. Desse modo, cada compra necessita possuir
cliente, produto, quantidade de produtos, valor unitário e valor total da compra.

Os dados de clientes e compras é um dado fictício utilizado para o desenvolvimento das
atividades a ser realizadas nesse trabalho. Sendo assim, os dados foram criados de forma
aleatória e não possui nenhuma relação com dados no mundo real.

Atividades do enunciado I

Os alunos deverão desempenhar as seguintes atividades:
1. Coletar dados das seguintes fontes de dados.

a. compras.xls:
Contém dados das compras realizadas por cliente.

b. clientes.json:
Contém dados de clientes (análise de perfil).

c. estados.txt:
 Contém dados de estados dos clientes.

d. O link: https://profleandrolessa.wordpress.com/exercicio-de-coleta-de-
dados/:
 Contém dados de produtos.

2. Criar estrutura de armazenamento;
3. Avaliar dados ausentes das colunas e corrigi-los;
4. Criar algoritmo de clusterização k-means;

Enunciado II

Após a implantação de todas as etapas do processo do Big Data, os analistas
identificaram a necessidade de entender melhor a relação entre os produtos comprados
pelos clientes. A ideia é encontrar padrões ocultos nos dados que possam auxiliar na
tomada de decisão e assim criar promoções, kits de vendas, melhorar disponibilização
de produtos nas prateleiras dos supermercados, por exemplo. Para isso, antes de
implementar o modelo em produção, os analistas vão realizar uma POC com dados de
vendas de produtos de outra rede de supermercados e, em seguida, aplicar o modelo
nos dados de produção do supermercado.

Atividades do enunciado II

Os alunos deverão desempenhar as seguintes atividades:

1. Coletar dados do dataset mercado.csv;
2. Analisar os dados coletados;
3. Tratar os dados coletados;
4. Avaliar dados ausentes nas colunas;
5. Identificar os itens frequentes;
6. Criar regras de associação;
