-- Some exercises about concepts of episode 01

-- Ex1. Quantos produtos temos da categoria artes?

SELECT product_category_name
     , COUNT (product_id) as quantidade
  FROM tb_products
 WHERE product_category_name = 'artes'