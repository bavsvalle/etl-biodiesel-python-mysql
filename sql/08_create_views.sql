use biocombustiveis;

/*
View: lista_produtos
Descrição: Retorna a lista de produtos únicos em ordem alfabética (A - Z)
Campos retornados:
	id: id do produto
    produto: produto utilizado como matéria-prima
*/
create view lista_produtos as 
select * from produtos
order by produto asc;

select * from lista_produtos;

/*
View: m3_por_produto
Descrição: Retorna o total de matéria-prima (m³) utilizada para produção de biodiesel por produto durante o período 2017 a 2023.
Campos retornados:
	id: id do produto
    produto: produto utilizado como matéria-prima
    total_m3: quantidade total de matéria-prima utilizada em metro cúbico (m³)
*/
create view m3_por_produto as
select
	p.id,
    p.produto,
    format(sum(b.quantidade_m3), 0, 'de_DE') as total_m3
from produtos p join biocombustiveis b on p.id = b.produto_id
group by
	p.id,
    p.produto
order by
	sum(quantidade_m3) desc;

/*
View: m3_por_regiao
Descrição: Retorna o total de matéria-prima (m³) utilizada para produção de biodiesel por região, durante o período 2017 a 2023 
Campos retornados:
	id: id da região
    regiao: região de utilização da matéria-prima
    total_m3: quantidade total de matéria-prima utilizada em metro cúbico (m³)
*/
create view m3_por_regiao as    
select
	r.id,
    r.regiao,
    format(sum(b.quantidade_m3), 0, 'de_DE') as total_m3
from regioes r join biocombustiveis b on r.id = b.regiao_id
group by 	
	r.id,
    r.regiao
order by
	sum(b.quantidade_m3) desc;

/*
View: m3_por_estado
Descrição: Retorna o total de matéria-prima (m³) utilizada para produção de biodiesel por estado, durante o período 2017 a 2023 
Campos retornados:
	id: id do estado
    estado: estado de utilização da matéria-prima
    total_m3: quantidade total de matéria-prima utilizada em metro cúbico (m³)
*/
create view m3_por_estado as
select 
	e.id,
    e.estado,
    format(sum(quantidade_m3), 0, 'de_DE') as total_m3
from estados e join biocombustiveis b on e.id = b.estado_id
group by 
	e.id,
    e.estado
order by
	sum(quantidade_m3) desc;

/*
View: m3_produto_ano
Descrição: Retorna o total de matéria-prima (m³) utilizada para produção de biodiesel por produto e por ano
Campos retornados:
	id: id do produto
    produto: produto utilizado como matéria-prima
    total_m3: quantidade total de matéria-prima utilizada em metro cúbico (m³)
    ano: ano de utilização do produto
*/
create view m3_produto_ano as
select
	p.id,
    p.produto,
    format(sum(b.quantidade_m3), 0, 'de_DE') as total_m3,
    a.ano
from biocombustiveis b
	join produtos p on p.id = b.produto_id
	join anos a on a.id = b.ano_id
group by
	p.id,
    p.produto,
    a.ano
order by
	a.ano desc,
    sum(quantidade_m3) desc;

/*
View: m3_por_ano
Descrição: Retorna o total de matéria-prima (m³) utilizada para produção de biodiesel por ano
Campos retornados:
	id: id do ano
    ano: ano de utilização do produto (matéria-prima)
    total_m3: quantidade total de matéria-prima utilizada em metro cúbico (m³)
*/
create view m3_por_ano as
select
	a.id,
    a.ano,
    format(sum(b.quantidade_m3), 0, 'de_DE') as total_m3
from biocombustiveis b join anos a on b.ano_id = a.id
group by
	a.id,
    a.ano
order by
	sum(b.quantidade_m3) desc;

	

