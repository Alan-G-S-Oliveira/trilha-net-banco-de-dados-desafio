-- Quest�o 1
SELECT Nome, Ano FROM Filmes

-- Quest�o 2
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY ANO ASC

-- Quest�o 3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta Para o Futuro'

-- Quest�o 4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

-- Quest�o 5
SELECT Nome, Ano, Duracao FROM Filmes
WHERE ANO > 2000

-- Quest�o 6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- Quest�o 7
SELECT Ano, COUNT(Ano) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- Quest�o 8
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'M'

-- Quest�o 9
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Quest�o 10
SELECT Nome, Genero FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- Quest�o 11
SELECT Nome, Genero FROM FilmesGenero
INNER JOIN Filmes ON Filmes.ID = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mist�rio'

-- Quest�o 12
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM ElencoFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor
INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme