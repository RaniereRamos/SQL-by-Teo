-- Learning SQL (Notes from Teo Calvo) 
   -- Function: GROUP BY()


   SELECT product_category_name
        , COUNT (1) as qtd_linhas
        , COUNT (product_category_name) as qtd_categorias                                         -- conta linhas não nulas no campo categoria
        , COUNT (DISTINCT product_category_name) as qtd_categorias_dstc                           -- conta linhas distintas para o campo categoria
        , MAX (product_photos_qty) as max_photo_qty                                               -- maior valor do campo quantidade de fotos
        , MIN (product_photos_qty) as min_photo_qty                                               -- menor valor do campo quantidade de fotos
        , ROUND (AVG (product_photos_qty), 2) as avg_photo_qty                                    -- valor médio do campo quantidade de fotos
        , SUM (product_photos_qty) as sum_photo_qty                                               -- soma total dos valores do campo quantidade de fotos
        , ROUND (SUM (product_photos_qty) / COUNT (product_photos_qty), 2) as avg_unha_photo_qty  -- divisão entre soma de valores e contagem não nula de qtde fotos
    FROM tb_products
   WHERE product_category_name IS NOT NULL
GROUP BY product_category_name
  HAVING COUNT (1) > 50
ORDER BY COUNT (1);