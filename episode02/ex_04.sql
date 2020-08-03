-- Some exercises about concepts of episode 02

 -- Ex.4: Faça uma query que apresente o tamanho médio, máximo e mínimo do nome de objeto por categoria.
 -- Considere apenas os objetos que tenham descrição maior que 50. Exiba apenas as categorias com tamanho
 -- médio de descrição do objeto com mais de 100 caracteres

SELECT product_category_name
        , AVG(product_name_lenght) as media_nome
        , MAX(product_name_lenght) as max_nome
        , MIN(product_name_lenght) as min_nome
    FROM tb_products
   WHERE product_description_lenght > 50
GROUP BY product_category_name
  HAVING product_description_lenght > 100;