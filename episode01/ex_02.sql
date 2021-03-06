-- Some exercises about concepts of episode 01

-- Ex2. Quantos produtos tem mais de 5 litros?

 SELECT product_id
      , product_category_name
      , product_photos_qty
      , product_weight_g
      , product_weight_g / 1000 as product_weight_kg
      , product_length_cm
      , product_weight_g
      , product_width_cm
      , product_length_cm * product_height_cm * product_width_cm as volume
 FROM tb_products
WHERE (product_length_cm * product_height_cm * product_width_cm) > 5000;