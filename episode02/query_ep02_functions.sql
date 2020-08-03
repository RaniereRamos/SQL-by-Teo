-- Learning SQL (Notes from Teo Calvo) 
   -- Functions: MIN(), MAX(), AVG(), SUM(), COUNT(), DISTINCT()


SELECT COUNT (1) as qtd_linhas
     , COUNT (product_category_name) as qtd_categorias                                         -- conta linhas não nulas no campo categoria
     , COUNT (DISTINCT product_category_name) as qtd_categorias_dstc                           -- conta linhas distintas para o campo categoria
     , MAX (product_photos_qty) as max_photo_qty                                               -- maior valor do campo quantidade de fotos
     , MIN (product_photos_qty) as min_photo_qty                                               -- menor valor do campo quantidade de fotos
     , ROUND (AVG (product_photos_qty), 2) as avg_photo_qty                                    -- valor médio do campo quantidade de fotos
     , SUM (product_photos_qty) as sum_photo_qty                                               -- soma total dos valores do campo quantidade de fotos
     , ROUND (SUM (product_photos_qty) / COUNT (product_photos_qty), 2) as avg_unha_photo_qty  -- divisão entre soma de valores e contagem não nula de qtde fotos
FROM tb_products;


-- Count number of lines 

SELECT COUNT (1)
  FROM tb_products
 WHERE product_category_name = 'artes';


-- Count all observations and distinct categories

SELECT COUNT (1) as qtd_linhas
     , COUNT (product_category_name) as qtd_categorias
     , COUNT (DISTINCT product_category_name) as qtde_categorias_dist
 FROM tb_products;


--- 

 -- Quantas fotos tem o produto que mais tem fotos?

  SELECT product_category_name
       , COUNT (1) as qtd_linhas                                                                       -- count number of lines
       , COUNT (product_category_name) as qtd_categorias                                               -- count number of categories
       , COUNT (DISTINCT product_category_name) as qtd_categorias_dstc                                 -- count distinct number of category name
       , MAX (product_photos_qty) as max_photo_qty                                                     -- show max of photos in a product
       , MIN (product_photos_qty) as min_photo_qty                                                     -- show min of photos in a product
       , ROUND (AVG (product_photos_qty), 2) as avg_photo_qty                                          -- calculate average qty of products
       , ROUND (SUM (product_photos_qty) / COUNT (product_photos_qty), 2) as avg_unha_photo_qty        -- division between sum of value and count not null qty of photos
    FROM tb_products
GROUP BY product_category_name;


-- Quantas fotos tem o produto que mais tem fotos em categorias específicas?

 SELECT product_category_name
       , COUNT (1) as qtd_linhas                                                                       -- count number of lines
       , COUNT (product_category_name) as qtd_categorias                                               -- count number of categories
       , COUNT (DISTINCT product_category_name) as qtd_categorias_dstc                                 -- count distinct number of category name
       , MAX (product_photos_qty) as max_photo_qty                                                     -- show max of photos in a product
       , MIN (product_photos_qty) as min_photo_qty                                                     -- show min of photos in a product
       , ROUND (AVG (product_photos_qty), 2) as avg_photo_qty                                          -- calculate average qty of products
       , ROUND (SUM (product_photos_qty) / COUNT (product_photos_qty), 2) as avg_unha_photo_qty        -- division between sum of value and count not null qty of photos
    FROM tb_products
   WHERE product_category_name IN ('pet_shop', 'perfumaria', 'artes')
GROUP BY product_category_name;


-- What categories with more 50 produtcs?

 SELECT *
  FROM (
 
        SELECT product_category_name
            , COUNT (1) as qtd_linhas                                                                       -- count number of lines
            , COUNT (product_category_name) as qtd_categorias                                               -- count number of categories
            , COUNT (DISTINCT product_category_name) as qtd_categorias_dstc                                 -- count distinct number of category name
            , MAX (product_photos_qty) as max_photo_qty                                                     -- show max of photos in a product
            , MIN (product_photos_qty) as min_photo_qty                                                     -- show min of photos in a product
            , ROUND (AVG (product_photos_qty), 2) as avg_photo_qty                                          -- calculate average qty of products
            , ROUND (SUM (product_photos_qty) / COUNT (product_photos_qty), 2) as avg_unha_photo_qty        -- division between sum of value and count not null qty of photos
        FROM tb_products
    GROUP BY product_category_name
      )
   
   WHERE qtd_linhas >= 50
ORDER BY qtd_linhas;


-- But is another wat to do this ... an elegany way

 SELECT product_category_name
      , COUNT (1) as qtd_linhas                                                                       /* count number of lines */
      , COUNT (product_category_name) as qtd_categorias                                               /* count number of categories */
      , COUNT (DISTINCT product_category_name) as qtd_categorias_dstc                                 /* count distinct number of category name */
      , MAX (product_photos_qty) as max_photo_qty                                                     /* show max of photos in a product */
      , MIN (product_photos_qty) as min_photo_qty                                                     /* show min of photos in a product */
      , ROUND (AVG (product_photos_qty), 2) as avg_photo_qty                                          /* calculate average qty of products */
      , ROUND (SUM (product_photos_qty) / COUNT (product_photos_qty), 2) as avg_unha_photo_qty        /* division between sum of value and count not null qty of photos */
    FROM tb_products
   WHERE product_category_name IS NOT NULL
GROUP BY product_category_name
       , product_photos_qty
  HAVING COUNT (product_category_name) >= 50
ORDER BY product_category_name
       , product_photos_qty
;
