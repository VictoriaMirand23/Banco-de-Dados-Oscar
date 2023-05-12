
-- CONSULTAR DADOS DENTRO DE UM BANCO COM FILTRO SIMPLES
SELECT film, name, winner FROM movies where winner = "true";

-- 1)Quantas vezes Natalie Portman foi indicada ao Oscar?
-- R:3
SELECT COUNT(*) FROM `movies` WHERE name = "Natalie Portman";

-- 2)Quantos Oscars Natalie Portman ganhou?
-- R:1
SELECT COUNT(*) FROM `movies` where name = "Natalie Portman" AND winner = "True";

-- 3)Amy Adams já ganhou algum Oscar?
-- R:Não
SELECT COUNT(*) FROM `movies` where name = "Amy Adams" AND winner = "True";

-- 4)Toy Story 3 ganhou um Oscar em quais anos?
-- R:2011
SELECT year_ceremony FROM `movies` where `film` = "Toy Story 3" AND winner = "True";

-- 5)Quem tem mais Oscars: a categoria "Melhor Ator" ou "Melhor Filme"?
-- R:Melhor filme
SELECT COUNT(*) FROM `movies` where `film` AND winner = "True";
SELECT COUNT(*) FROM `movies` where `name` AND winner = "True";

-- 6)O primeiro Oscar para melhor Atriz foi para quem? Em que ano?
-- R:Para Janet Gaynor em 1927
SELECT name, year_film from movies where winner= "true" and category= "Actress"; 

-- 7)Na coluna/campo Winner, altere todos os valores com "True" para 1 e todos os valores "False" para 0
-- R:
UPDATE movies SET winner = 0 WHERE winner = "false";
UPDATE movies SET winner = 1 WHERE winner = "true";

-- 8)Em qual edição do Oscar "Crash" ganhou o prêmio principal?
-- R:Na 78° edição em 2006
select * from movies where film="Crash" and winner=1 and category="BEST PICTURE";

-- 9)Na sua opinião, que filme merecia ganhar um Oscar e não ganhou?
-- R:


-- 9)Bom... dê um Oscar para esse filme, então.
-- R:

-- 10)O filme Central do Brasil aparece no Oscar?
-- R:Não
select * from movies where film="Central do Brasil";

-- 11)Inclua no banco 3 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem.
-- R:


-- 12)Crie uma nova categoria de premiação. Qualquer prêmio que você queira dar. Agora vamos dar esses prêmios aos filmes que você cadastrou na questão acima.
update movies set category= " " where id_movie= 10397 or id_movie= 10398 or id_movie = 10399;


-- 13)Qual foi o primeiro ano a ter um prêmio do Oscar?
-- R:1928
select year_film, year_ceremony from movies where winner= 1;

-- 14)Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?
-- R:
select * from movies where category="BEST PICTURE" and year_ceremony= 2002 and winner=1 or category="DIRECTING" and year_ceremony= 2002 and winner=1 or category="ACTRESS" and year_ceremony= 2002 and winner=1 order by category;

-- 15)Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco, mas eles ainda não ganharam o Oscar. Só foram nomeados.
-- R:
