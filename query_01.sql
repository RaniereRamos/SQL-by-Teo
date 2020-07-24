 SELECT product_id,
        product_category_name,
        product_photos_qty,
        product_weight_g,
        product_weight_g / 1000 as product_weight_kg,
        product_length_cm,
        product_height_cm,
        product_width_cm,
        product_length_cm * product_height_cm * product_width_cm as product_volume_cm3
   FROM tb_products
-- WHERE product_category_name = 'brinquedos'
-- WHERE product_weight_g >= 1000
   WHERE product_category_name IN ('brinquedos','automotivo')
     AND (product_weight_g / 1000) >= 1
     AND (product_length_cm * product_height_cm * product_width_cm) >= 1000
     ;
  
-- Show distinct values
SELECT DISTINCT product_category_name
           FROM tb_products;

-- Taks
-- Ex1. Quantos produtos temos da categoria artes?
-- Ex2. Quantos produtos tem mais de 5 litros?
-- Ex3. Crie uma coluna nova que contenha a informação de volume em m3?
-- Ex4. Quantos produtos de 'beleza_saude' com menos de 1 litro?