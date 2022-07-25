use pesquisa;

select * from pesquisa;
select * from stg_pesquisa;

-- 1. Quantas pessoas do genero masculino gostam de peixe? 274
select pes.genero, count(1) 
from pesquisa p
join pessoa pes
on p.cod_pessoa = pes.cod_pessoa
inner join animal_estimacao aes
on p.cod_animal_estimacao = aes.cod_animal_estimacao 
where aes.animal = 'peixe'
and pes.genero = 'Masculino'
group by genero;


-- 2. Qual a média de idade dos mulheres que gostam de chá e clima frio?(..). 49,60
create temporary table idade
select 
   cod_pessoa, data_nascimento,
   timestampdiff(YEAR, data_nascimento, NOW()) AS idade
from pessoa;

-- conta (genero - bebida - clima)
select pes.genero, avg(idade), cli.cod_clima, bbd.cod_bebida
from pesquisa p
join clima cli
on p.cod_clima = cli.cod_clima
join pessoa pes
on p.cod_pessoa = pes.cod_pessoa
join bebida bbd
on p.cod_bebida = bbd.cod_bebida
join idade ida
on ida.cod_pessoa = pes.cod_pessoa
where bbd.bebida = 'chá'
and cli.clima = 'frio'
and pes.genero = 'Feminino'
group by pes.genero;

-- 3. Qual o hobbie de menor preferência entre as mulheres? ler livros
select pes.genero, hb.hobbie, count(1) as total
from pesquisa p
join pessoa pes
on p.cod_pessoa = pes.cod_pessoa
join hobbie hb
on p.cod_hobbie = hb.cod_hobbie
where pes.genero = 'Feminino'
group by hobbie
order by total asc;


-- 4. Qual o hobbie de maior preferência entre as mulheres que gostam de cachorro? praticar esportes
select pes.genero, hb.hobbie, ae.animal, count(1) as total
from pesquisa p
join pessoa pes
on p.cod_pessoa = pes.cod_pessoa
join hobbie hb
on p.cod_hobbie = hb.cod_hobbie
inner join animal_estimacao ae 
on p.cod_animal_estimacao = ae.cod_animal_estimacao 
where pes.genero = 'Feminino'
and ae.animal = 'cachorro'
group by hobbie
order by total desc;

-- 5. Qual a bebida favorita entre os mulheres e homens? respectivamente? Cerveja e café
-- genero, bebida_favorita
select pes.genero, bbd.bebida, count(1) as total
from pesquisa p
join pessoa pes
on p.cod_pessoa = pes.cod_pessoa
join bebida as bbd
on p.cod_bebida = bbd.cod_bebida
where pes.genero = 'Feminino'
group by genero, bebida
order by total desc;

select pes.genero, bbd.bebida, count(1) as total
from pesquisa p
join pessoa pes
on p.cod_pessoa = pes.cod_pessoa
join bebida as bbd
on p.cod_bebida = bbd.cod_bebida
where pes.genero = 'Masculino'
group by genero, bebida
order by total desc;


-- 6. Qual é a média de idade das pessoas que tem como hobbie assistir TV?
-- hobbie, pessoa, idade
select hb.hobbie, avg(idade)
from pesquisa p
join hobbie hb
on p.cod_hobbie = hb.cod_hobbie
join idade ida 
on p.cod_pessoa = ida.cod_pessoa
where hb.hobbie = 'Assistir TV'
group by hb.hobbie;


-- 7. Quantas pessoas tem como Hobbie como pintar quadros e qual a sua média de idade respectivamente? 260 e 46,16
select hb.hobbie, count(1)
from pesquisa p 
join hobbie hb
on p.cod_hobbie = hb.cod_hobbie 
where hb.hobbie = 'Pintar quadros'
group by hobbie;

select hobbies, avg(idade)
from stg_pesquisa p
join idade ida on p.cod_pessoa = ida.cod_pessoa
where hobbies = 'Pintar quadros'
group by hobbies;


-- 8. Qual script abaixo retorna o número total de pessoas que responderam na pesquisa que gostam de cachorro?
select ae.animal, count(1)
from pesquisa p 
inner join animal_estimacao ae 
on p.cod_animal_estimacao = ae.cod_animal_estimacao 
where ae.animal = 'cachorro'
group by animal;


-- 9. Quantas pessoas de modo geral gostam de cachorro? 414
select ae.animal, count(1)
from pesquisa p 
inner join animal_estimacao ae 
on p.cod_animal_estimacao = ae.cod_animal_estimacao 
where ae.animal = 'cachorro'
group by ae.animal;


-- 10. Qual o segundo animal de estimação preferido entre os homens? peixe
-- animal, genero
select genero, animal_estimacao, count(1) as total
from stg_pesquisa
where genero = 'Masculino'
group by animal_estimacao
order by total desc;

-- 11. Quantas pessoas que gostam do clima quente?
-- pessoa, clima
select * from clima;

select count(cod_pessoa) as total
from pesquisa
where cod_clima = 2;

select count(cod_pessoa), cod_clima
from pesquisa
group by cod_clima;