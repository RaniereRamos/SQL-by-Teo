-- Learning SQL (Notes from Teo Calvo) 
   -- Functions: JOIN


   SELECT *
     FROM tb_products
LEFT JOIN tb_order_items;     -- O que eu encontrar na tb_order_items vou trazer para o tb_products


    SELECT *
      FROM tb_products
RIGHT JOIN tb_order_items;     -- O que eu encontrar na tb_products vou trazer para o tb_order_items


    SELECT *
      FROM tb_products
INNER JOIN tb_order_items;     -- O que eu encontrar na tb_products e na tb_order_items mantém


-- OBJETIVO: calcular a quantidade de vendas e receita por categoria de produto durante o ano de 2017


   SELECT T1.order_id
        , T1.customer_id
        , T1.order_status
        , T1.order_purchase_timestamp
        , T2.product_id
        , T2.price                                                   -- receita
        , T3.product_category_name                                   -- categoria do produto               
     FROM tb_orders as T1                                            -- Primeira tabela: pedidos

LEFT JOIN tb_order_items as T2                                       -- Segunda tabela: pedido / item
       ON T1.order_id = T2.order_id

LEFT JOIN tb_products as T3                                          -- Terceita tabela
       ON T2.product_id = T3.product_id

    WHERE strftime ('%Y', DATE (T1.order_approved_at)) = '2017'      -- ano de 2017
      AND T1.order_status = 'delivered'                              -- produtos entregues com sucesso


-- OBJETIVO 2: calcular a quantidade de vendas (pedidos), itens vendidos e receita por categoria de produto durante o ano de 2017


   SELECT T3.product_category_name                                   -- categoria do produto     
        , COUNT (T1.order_id) as qtd_itens_vendidos
        , COUNT (DISTINCT T1.order_id) as qtd_pedidos
        , ROUND (SUM (T2.price), 2) as receita 
       /* T1.customer_id
        , T1.order_status
        , T1.order_purchase_timestamp
        , T2.product_id */
     FROM tb_orders as T1                                            -- Primeira tabela: pedidos

LEFT JOIN tb_order_items as T2                                       -- Segunda tabela: pedido / item
       ON T1.order_id = T2.order_id

LEFT JOIN tb_products as T3                                          -- Terceita tabela
       ON T2.product_id = T3.product_id

    WHERE strftime ('%Y', DATE (T1.order_approved_at)) = '2017'      -- ano de 2017
      AND T1.order_status = 'delivered'                              -- produtos entregues com sucesso

 GROUP BY T3.product_category_name; 









