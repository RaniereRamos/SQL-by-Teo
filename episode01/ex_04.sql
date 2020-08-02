-- Some exercises about concepts of episode 01

-- Ex4. Quantos produtos de 'beleza_saude' com menos de 1 litro?

SELECT product_id
     , product_category_name as categoria
     , product_length_cm * product_height_cm * product_width_cm as vol_cm3
FROM tb_products
WHERE product_category_name = 'beleza_saude'
  AND product_length_cm * product_height_cm * product_width_cm < 1000;