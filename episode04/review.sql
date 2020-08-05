-- Review SQL (Notes from Teo Calvo) 

SELECT product_id
     , product_category_name
     , product_name_lenght
     , product_description_lenght
     , product_photos_qty
     , product_height_cm
     , product_weight_g
     , product_length_cm
     , product_weight_g
     , product_width_cm
     , product_length_cm * product_height_cm * product_width_cm as volume_cm3
     , CASE WHEN product_weight_g > 1000 THEN 1 ELSE 0 END as peso_maior_1kg
     , CASE WHEN product_weight_g < 500  THEN '0-500'
            WHEN product_weight_g < 1000 THEN '500-1000'
            WHEN product_weight_g < 2000 THEN '1000-2000'
       ELSE 'Maior-2000' END as classe
FROM tb_products;