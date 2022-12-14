-- Databricks notebook source
SELECT * FROM silver_olist.pedido
-- leia-se selecione TUDO da tabela silver pedidos  

-- COMMAND ----------

SELECT idPedido, idCliente FROM silver_olist.pedido

 -- selecione as colunas idPedido, idCliente da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido, descSituacao FROM silver_olist.pedido

 -- selecione as colunas idPedido, descSituacao da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido, idCliente FROM silver_olist.pedido LIMIT 5

 -- selecione as colunas idPedido, idCliente da tabela silver_olist.pedido

-- COMMAND ----------

SELECT *,
  DATEDIFF(dtEstimativaEntrega, dtEntregue) AS qtDiasEntrega

FROM silver_olist.pedido LIMIT 5

-- COMMAND ----------


