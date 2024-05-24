
-- Primeira Consulta
SELECT Nome, Ano FROM Filmes

-- Segunda Consulta
SELECT Nome, Ano FROM Filmes
ORDER BY Ano

-- Terceira Consulta
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- Quarta Consulta
SELECT * FROM Filmes 
WHERE Ano = 1997

-- Quinta Consulta 
SELECT * FROM Filmes 
WHERE Ano > 2000

-- Sexta Consulta 
SELECT * FROM Filmes 
WHERE Duracao > 100 and Duracao < 150
ORDER BY Duracao

-- Sétima consulta 
SELECT Ano, COUNT(*) Quantidade FROM Filmes 
GROUP BY Ano 
ORDER BY Quantidade DESC

-- Oitava Consulta 
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M'

-- Nona Consulta
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Décima Consulta
SELECT F.Nome, G.Genero FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id

-- Décima Primeira Consulta 
SELECT F.Nome, G.Genero FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério'

-- Décima Segunda Consulta
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM Atores A
INNER JOIN ElencoFilme EF ON A.Id = EF.IdAtor
INNER JOIN Filmes F ON EF.IdFilme = F.Id
