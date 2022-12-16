-- Databricks notebook source
SELECT * 
FROM silver_olist.vendedor

-- COMMAND ----------

-- Qual estado tem mais de 100 vendedores ?
SELECT descUF,

  COUNT(idVendedor) AS qtVendedorUF
  
FROM silver_olist.vendedor

GROUP BY descUF 

HAVING qtVendedorUF >= 100

-- COMMAND ----------

-- Qual estado tem mais de 100 vendedores e são da região sudeste ?
SELECT descUF,

  COUNT(idVendedor) AS qtVendedorUF
  
FROM silver_olist.vendedor

WHERE descUF IN('SP', 'MG', 'RJ', 'ES') 

GROUP BY descUF 

HAVING qtVendedorUF >= 100
ORDER BY qtVendedorUF DESC

-- COMMAND ----------


