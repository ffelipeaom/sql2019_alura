
--SEEK
SELECT N FROM Nums1 WHERE n = '10001'
--SCAN
SELECT N FROM Nums2 WHERE n = '10001'

SELECT A.CPF, A.NOME, B.DATA, SUM(C.QUANTIDADE) AS QUANTIDADE
FROM [TABELA DE CLIENTES] A
INNER JOIN [NOTAS FISCAIS] B ON A.CPF = B.CPF
INNER JOIN [ITENS NOTAS FISCAIS] C ON B.NUMERO = C.NUMERO
GROUP BY A.CPF, A.NOME, B.DATA

