 -- Some exercises about concepts of episode 02
 
 -- Ex.1: Faça uma query que apresente o tamanho médio, máximo e mínimo da descrição do objeto por categoria.

   SELECT product_category_name
        , AVG (product_description_lenght) as media_descricao
        , MAX (product_description_lenght) as max_descricao
        , MIN (product_description_lenght) as min_descricao
    FROM tb_products
GROUP BY product_category_name;


 -- Ex.2: Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria.

SELECT product_category_name
     , AVG(product_name_lenght) as media_nome
     , MAX(product_name_lenght) as max_nome
     , MIN(product_namen_lenght) as min_nome
FROM tb_products

 -- Ex.3: Faça uma query que apresente o tamanho médio, máximo e mínimo do nome de objeto por categoria.
 -- Considere apenas os objetos que tenham descrição maior que 50.

  SELECT product_category_name
        , AVG(product_name_lenght) as media_nome
        , MAX(product_name_lenght) as max_nome
        , MIN(product_namen_lenght) as min_nome
    FROM tb_products
   WHERE product_description_lenght > 50
GROUP BY product_category_name

 -- Ex.4: Faça uma query que apresente o tamanho médio, máximo e mínimo do nome de objeto por categoria.
 -- Considere apenas os objetos que tenham descrição maior que 50. Exiba apenas as categorias com tamanho
 -- médio de descrição do objeto com mais de 100 caracteres

 
