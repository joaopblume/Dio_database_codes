CREATE TABLE pessoas (
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT, 
    nome VARCHAR(30) NOT NULL,
    nascimento DATE
);

INSERT INTO pessoas (nome, nascimento) VALUES ('Nathally' , '1990-05-22');
INSERT INTO pessoas (nome, nascimento) VALUES ('Pedro' , '2000-07-11');
INSERT INTO pessoas (nome, nascimento) VALUES ('Ricardo' , '1999-12-08');

SELECT * FROM pessoas;

UPDATE pessoas SET nome = 'Nathaly Souza' WHERE id=1;

SELECT * FROM pessoas WHERE id=3
DELETE FROM pessoas WHERE id=3;

SELECT * FROM  pessoas ORDER BY nome DESC;

ALTER TABLE pessoas ADD 'genero' VARCHAR(1) NOT NULL AFTER nascimento;
UPDATE pessoas SET genero = 'F' WHERE id=1;
UPDATE pessoas SET genero = 'M' WHERE id=2;

SELECT COUNT(id), genero FROM pessoas GROUP BY genero;


