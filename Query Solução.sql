
-- 1
SELECT 
	Nome, 
	Ano
FROM Filmes

-- 2
SELECT * 
FROM Filmes
ORDER BY Ano

-- 3
SELECT * 
FROM Filmes
WHERE Nome LIKE 'de volta para o futuro'

-- 4
SELECT * 
FROM Filmes
WHERE Ano = 1997

-- 5
SELECT * 
FROM Filmes
WHERE Ano > 2000

-- 6
SELECT * 
FROM Filmes
WHERE 
	Duracao > 100
	AND Duracao < 150
ORDER BY Duracao

-- 7
SELECT 
	Ano,
	COUNT(Ano) as Quantidade
FROM Filmes
GROUP BY (Ano)
ORDER BY Quantidade DESC

-- 8
SELECT *
FROM Atores
WHERE Genero = 'M'

-- 9
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT 
	f.Nome,
	g.Genero
FROM Filmes AS f
INNER JOIN FilmesGenero AS fg
ON f.Id = fg.IdFilme
INNER JOIN Generos AS g
ON g.Id = fg.IdGenero

-- 11
SELECT 
	f.Nome,
	g.Genero
FROM Filmes AS f
INNER JOIN FilmesGenero AS fg
ON f.Id = fg.IdFilme
INNER JOIN Generos AS g
ON g.Id = fg.IdGenero
WHERE g.Genero LIKE 'Mistério'

-- 12
SELECT 
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
FROM Filmes AS f
INNER JOIN ElencoFilme AS ef
ON f.Id = ef.IdFilme
INNER JOIN Atores AS a
ON ef.IdAtor = a.Id

