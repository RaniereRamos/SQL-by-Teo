-- Some exercises about concepts of episode 01

-- Ex3. Crie uma coluna nova que contenha a informação de volume em m3?

 SELECT product_id
      , product_category_name
      , product_photos_qty
      , product_weight_g
      , product_weight_g / 1000 as product_weight_kg
      , product_length_cm
      , product_weight_g
      , product_width_cm
      , (product_length_cm * product_height_cm * product_width_cm) / 1000000 as volume_m3
 FROM tb_products
WHERE (product_length_cm * product_height_cm * product_width_cm) > 5000;