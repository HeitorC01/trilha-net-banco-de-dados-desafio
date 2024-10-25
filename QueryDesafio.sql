--1 - Buscar o nome e ano dos filmes
select Nome, Ano from  Filmes
order by id

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome, Ano , Duracao from  Filmes
order by ano

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select Nome, Ano , Duracao from  Filmes
where nome like 'De Volta para o Futuro'
order by ano

--4 - Buscar os filmes lançados em 1997
select Nome, Ano , Duracao from  Filmes
where Ano = 1997
order by ano

--5 - Buscar os filmes lançados APÓS o ano 2000
select Nome, Ano , Duracao from  Filmes
where Ano >= 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select Nome, Ano , Duracao from  Filmes
where duracao > 100 and duracao < 150 
order by duracao

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select Ano, Count(1) Qtd from  Filmes
group by ano
order by Count(1)  desc

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select Id, PrimeiroNome, UltimoNome, Genero from  Atores
Where Genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select Id, PrimeiroNome, UltimoNome, Genero from  Atores
Where Genero = 'F'
Order by PrimeiroNome

--10 - Buscar o nome do filme e o gênero
select Filmes.Nome, Generos.Genero from Filmes
Inner join FilmesGenero on FilmesGenero.IdFilme = Filmes.Id
left join Generos on Generos.Id = FilmesGenero.IdGenero
order by idgenero, Generos.Id

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select Filmes.Nome, Generos.Genero from Filmes
Inner join FilmesGenero on FilmesGenero.IdFilme = Filmes.Id
left join Generos on Generos.Id = FilmesGenero.IdGenero
Where Generos.Id  = 10
order by idgenero, Generos.Id

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select Filmes.Nome, PrimeiroNome, UltimoNome, Papel from  Filmes
inner join ElencoFilme on ElencoFilme.IdFilme = Filmes.Id
left join Atores on Atores.Id = ElencoFilme.IdAtor










