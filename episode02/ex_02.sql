-- Some exercises about concepts of episode 02

-- Ex.2: Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria.

  SELECT product_category_name
       , AVG(product_name_lenght) as media_nome
       , MAX(product_name_lenght) as max_nome
       , MIN(product_name_lenght) as min_nome
    FROM tb_products
GROUP BY product_category_name;