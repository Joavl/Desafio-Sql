--1
SELECT Nome, Ano FROM Filmes

-- 2
SELECT Nome,Ano,Duracao FROM Filmes ORDER BY Ano ASC

--3 
SELECT Nome,Ano,Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';

--4
SELECT Nome,Ano,Duracao FROM Filmes WHERE Ano = '1997';

--5
SELECT Nome,Ano,Duracao From Filmes WHERE Ano>'2000';

--6
SELECT Nome,Ano,Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC;

--7
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

--8
SELECT * FROM Atores WHERE Genero='M';

--9
SELECT * FROM Atores WHERE Genero='F' ORDER BY PrimeiroNome ASC;

--10
SELECT filmes.Nome, generos.Genero
FROM filmes
INNER JOIN FilmesGenero ON filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = generos.Id;

--11
SELECT filmes.Nome, generos.Genero
FROM filmes
INNER JOIN FilmesGenero ON filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = generos.Id WHERE Generos.Genero ='Mistério';

--12
SELECT 
    filmes.Nome,
    atores.PrimeiroNome,
    atores.UltimoNome,
    elencofilme.papel
FROM filmes
INNER JOIN elencofilme ON filmes.Id = elencofilme.IdFilme
INNER JOIN atores ON elencofilme.IdAtor = atores.Id;

