--> (PART - 01)PROPÓSITO DESSE PROJETO, MOSTRAR MINHAS ANOTAÇÕES DE CONSULTAS E EXERCICIOS RESOLVIDOS CONFORME O CURSO

-- CONECTADO AO SQL SERVER - BANCO SIMULANDO UMA EMPRESA COM MAIS DE 50 TABELAS, USANDO PRINCIPALMENTE AS DE PESSOAS(FUNCIONARIOS DA EMPRESA)

-- CONSULTAS BÁSICAS | BUSCAS E APRIMORAMENTO DE CONSULTAS 

LINGUAGEM SQL TRADUZIDA AUTOMATICAMENTE PELO GITHUB!
 
# EXIBINDO DADOS NA TABELA

# COMO SELECIONAR E EXIBIR DADOS DE UMA TABELA
 SELECT *
 FROM Person.Person

=======================================================================================

# USANDO DISTINCT PARA OBTER VALORES UNICOS 

SELECT distinct FirstName, LastName
FROM Person.Person

# FILTRANDO LINHAS DE UMA TABELA COM ''

WHERE FirstName = 'Rob' and LastName = 'Young'

# REALIZANDO OPERAÇÕES COM SINAIS DE MAIOR E MENOR 

SELECT ProductID, ListPrice 
FROM Production.Product 
WHERE ListPrice > 1500 and <  5000

# DESAFIO 1 

SELECT name, weight
FROM Production.Product
WHERE Weight > 500 and Weight <= 700

# DESAFIO 2

SELECT MaritalStatus, SalariedFlag
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' and SalariedFlag = '1'

# DESAFIO 3

SELECT FirstName, LastName
FROM Person.Person
WHERE FirstName = 'Peter' and LastName = 'Krebs'

SELECT *
FROM PERSON.EmailAddress
WHERE EmailAddress = 'peter0@adventure-works.com'

# USANOD COUNT 

SELECT count (distinct title)
FROM Person.Person

# DESAFIO 4

SELECT count (ProductID)
FROM Production.Product

# DESAFIO 5

SELECT COUNT (size)
FROM Production.Product

# DESAFIO 6

SELECT COUNT (*)
FROM Production.Product

======================================================

# COMANDO TOP 

SELECT TOP 10*
FROM Production.Product

========================================================

# ORDER BY  SERVE PARA VOCE ORDER COLUNAS EM ORDEM DECRECENTE E CRESCENTE

SELECT *
FROM Person.Person
ORDER BY FirstName asc and desc


# DESAFIO 7

SELECT TOP 10 ProductID
FROM Production.Product
order by ListPrice desc

SELECT PRODUCTID, LISTPRICE
FROM Production.Product


# DESAFIO 8 

SELECT TOP 4 Name, ProductNumber
FROM Production.Product
ORDER BY ProductID asc

=======================================================================================

# USO DO BETWEEN(ENTRE)

SELECT *
FROM Production.Product
WHERE ProductID BETWEEN 1 and 317; # 
# USANDO NOT

SELECT *
FROM Production.Product
WHERE ProductID NOT BETWEEN 1 and 317;

# USANDO COM DATAS

SELECT HireDate
FROM HumanResources.Employee
WHERE HireDate between '2009/01/01' and '2010/01/01';

=======================================================================================

# OPERADOR IN 

SELECT *
FROM person.person
WHERE BusinessEntityID IN (2, 7, 13) 

# USANDO NOT E IN

SELECT *
FROM person.person
WHERE BusinessEntityID NOT IN (2, 7, 13) 

=======================================================================================

# USANDO LIKE

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE 'ovi%' 

WHERE FirstName LIKE '%ro_' 


# DESAFIO 9 
# QUANTOS PRODUTOS TEMOS CADASTRADOS NO SISTEMA QUE CUSTAM MAIS QUE 1500 DÓLARES?

SELECT COUNT (ListPrice)
FROM Production.Product
WHERE ListPrice > 1500

# DESAFIO 10
# QUANTAS PESSOAS TEMOS COM O SOBRENOME QUE INICIA COM A LETRA P ?

SELECT COUNT (MIDDLENAME) 
FROM Person.Person
WHERE MiddleName like '%p_'

# DESAFIO 11
# EM QUANTAS CIDADES UNICAS ESTÃO CADASTRADOS NOSSOS CLIENTES ?

SELECT COUNT(DISTINCT City)
FROM Person.Address

# DESAFIO 12
# QUAIS SAO AS CIDADES UNICAS QUE TEMOS CADASTRADAS EM NOSSO SISTEMA


SELECT distinct city
FROM Person.Address


# DESAFIO 13
# QUANTOS PRODUTOS VERMELHOS TEM O PREÇO ENTRE 500 A 1000 DÓLARES

SELECT COUNT (COLOR)
FROM Production.Product
WHERE ListPrice BETWEEN 500 AND 1000

# DESAFIO 14
# QUANTOS PRODUTOS TEM A PALAVRA 'ROAD' NO NOME DELES?

SELECT COUNT (name)
FROM Production.Product
WHERE Name LIKE '%road%'

=======================================================================================

# FUNÇÕES MIN, MAX, SUM, AVG 

PARA SABER A SOMA TOTAL DE VENDAS
== sun = SOMA VALORES

SELECT TOP 10 sum(linetotal) as 'soma'
FROM Sales.SalesOrderDetail

==                        ==

PARA SABER O VALOR MINIMO
SELECT TOP 10 min(linetotal)
FROM SalesOrderDetail

PARA SABER O VALOR MAXIMO
SELECT TOP 10 max(linetotal)
FROM SalesOrderDetail

PARA SABER A MÉDIA 
SELECT TOP 10 AVG(linetotal)
FROM SalesOrderDetail

==                        ==