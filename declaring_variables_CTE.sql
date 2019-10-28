WITH myvariable (var1, var2) AS (
   VALUES (75, 200)
)
SELECT A.*
FROM companybysector AS A, myvariable
WHERE stockprice BETWEEN var1 AND var2;


WITH myvariable (var1, var2) AS (
   VALUES (75, 200)
)
SELECT A.*
FROM companybysector AS A
WHERE stockprice BETWEEN (SELECT var1 FROM myvariable) AND (SELECT var2 FROM myvariable);

