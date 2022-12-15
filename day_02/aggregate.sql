-- Databricks notebook source
SELECT * FROM silver_olist.cliente

-- COMMAND ----------

SELECT COUNT(*)
FROM silver_olist.cliente

-- leia-se: selecione e some todas as observações da tabela silver_olist.cliente.

-- COMMAND ----------

SELECT 
  COUNT(*) AS lineNotNull , -- conte as linhas não nulas
  COUNT(idCliente) AS nrIdClientNotnull, -- conte 'id de clientes' não nulos
  COUNT(DISTINCT idCliente) AS nrClientUniq -- conte os clientes distintos(unicos)
  
FROM silver_olist.cliente

-- COMMAND ----------

SELECT
    COUNT(*) AS qtLinhas, -- conte as linhas não nulas
    COUNT(DISTINCT idCliente) AS qtClientes, -- conte 'id de clientes' não nulos
    COUNT(DISTINCT idClienteUnico) AS qtClientesUnicos -- conte os clientes distintos(unicos)
    

FROM silver_olist.cliente
WHERE descCidade IN ('sao paulo', 'campinas')

-- COMMAND ----------

SELECT * 
FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT
    ROUND(AVG(vlPreco), 2) AS mediaPreco, -- media dos preços
    
    INT(PERCENTILE(vlPreco, 0.5)) AS medianPreco, -- Valor da Mediana: metade dos valores da coluna vlPreco estão acima ou igual e outra metade estão abaixo ou igual o valor da mediana.
    
    MIN(vlPreco) AS minPreco,  -- Valor mínimo: menor valor da coluna vlPreco 
    MAX(vlPreco) AS maxPreco,  -- Valor máximo: maior valor da coluna vlPreco 
    
    
    MIN(vlFrete) AS minFrete, -- Valor mínimo: menor valor da coluna vlFrete
    MAX(vlFrete) as maxFrete,  -- Valor máximo: maior valor da coluna vlFrete 
    AVG(vlFrete) AS avgFrete -- Valor médio: valor médio da coluna vlPreco
    
    
FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT COUNT(*)
FROM silver_olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------


