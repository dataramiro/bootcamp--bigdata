select * from stg_jogadores3;

#Qual o país possui a maior média de vitórias? No geral (independente do jogo). 
select pais, avg(num_vitorias) as media
from stg_jogadores3
group by pais
order by media desc;

#Qual o jogo preferido entre as mulheres? 
select genero, jogo, count(1) as total
from stg_jogadores3
where genero = 'Feminino'
group by genero, jogo
order by total desc;

#Qual é a soma de derrotas do Brasil no jogo Dama?
select pais, sum(num_derrotas)
from stg_jogadores3
where pais='Brasil'
and jogo = 'Dama';

#Qual o jogo que possui o menor número de partidas? 
select jogo, count(total_partidas) as total
from stg_jogadores3
group by jogo
order by total desc