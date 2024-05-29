-- Questão 1
SELECT Nome, Ano FROM Filmes

-- Questão 2
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY ANO ASC

-- Questão 3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta Para o Futuro'

-- Questão 4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

-- Questão 5
SELECT Nome, Ano, Duracao FROM Filmes
WHERE ANO > 2000

-- Questão 6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- Questão 7
SELECT Ano, COUNT(Ano) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- Questão 8
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'M'

-- Questão 9
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Questão 10
SELECT Nome, Genero FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- Questão 11
SELECT Nome, Genero FROM FilmesGenero
INNER JOIN Filmes ON Filmes.ID = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério'

-- Questão 12
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM ElencoFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor
INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme