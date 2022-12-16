-- Databricks notebook source
SELECT 
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY 2

-- COMMAND ----------

-- Segunda Forma
SELECT 
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtClienteEstado 

-- COMMAND ----------

-- Terceira Forma
SELECT 
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY COUNT(DISTINCT idClienteUnico)

-- COMMAND ----------

-- Capturar apenas um item 
SELECT 
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtClienteEstado DESC

LIMIT 1

-- COMMAND ----------


