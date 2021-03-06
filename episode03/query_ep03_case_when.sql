-- Learning SQL (Notes from Teo Calvo) 
   -- Functions: CASE WHEN


SELECT product_id
     , product_category_name
     , CASE WHEN product_category_name = 'artes' THEN 1 ELSE 0 END as flag_artes
     , CASE WHEN product_category_name = 'perfumaria' THEN 1 ELSE 0 END as fla_perfumaria
     , product_name_lenght
     , product_description_lenght
     , product_photos_qty
     , product_weight_g
     , product_length_cm
     , product_weight_g
     , product_width_cm
FROM tb_products;


-- Sum of products

  SELECT product_category_name
       , COUNT (DISTINCT product_id) as qtd_produtos
    FROM tb_products
GROUP BY product_category_name
ORDER BY (COUNT (DISTINCT product_id));


-- What is percentage of 1 category?

SELECT product_category_name
     , AVG (CASE WHEN product_category_name = 'utilidades_domesticas' THEN 1 ELSE 0 END) as flag_utilidade_domestica
FROM tb_products;


-- What is percentage of all category?

    SELECT
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'agro_industria_e_comercio'THEN 1 ELSE 0 END ),2) AS agro_industria_e_comercio,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'alimentos'THEN 1 ELSE 0 END ),2) AS alimentos,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'alimentos_bebidas'THEN 1 ELSE 0 END ),2) AS alimentos_bebidas,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'artes'THEN 1 ELSE 0 END ),2) AS artes,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'artes_e_artesanato'THEN 1 ELSE 0 END ),2) AS artes_e_artesanato,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'artigos_de_festas'THEN 1 ELSE 0 END ),2) AS artigos_de_festas,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'artigos_de_natal'THEN 1 ELSE 0 END ),2) AS artigos_de_natal,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'audio'THEN 1 ELSE 0 END ),2) AS audio,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'automotivo'THEN 1 ELSE 0 END ),2) AS automotivo,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'bebes'THEN 1 ELSE 0 END ),2) AS bebes,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'bebidas'THEN 1 ELSE 0 END ),2) AS bebidas,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'beleza_saude'THEN 1 ELSE 0 END ),2) AS beleza_saude,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'brinquedos'THEN 1 ELSE 0 END ),2) AS brinquedos,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'cama_mesa_banho'THEN 1 ELSE 0 END ),2) AS cama_mesa_banho,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'casa_conforto'THEN 1 ELSE 0 END ),2) AS casa_conforto,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'casa_conforto_2'THEN 1 ELSE 0 END ),2) AS casa_conforto_2,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'casa_construcao'THEN 1 ELSE 0 END ),2) AS casa_construcao,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'cds_dvds_musicais'THEN 1 ELSE 0 END ),2) AS cds_dvds_musicais,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'cine_foto'THEN 1 ELSE 0 END ),2) AS cine_foto,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'climatizacao'THEN 1 ELSE 0 END ),2) AS climatizacao,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'consoles_games'THEN 1 ELSE 0 END ),2) AS consoles_games,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'construcao_ferramentas_construcao'THEN 1 ELSE 0 END ),2) AS construcao_ferramentas_construcao,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'construcao_ferramentas_ferramentas'THEN 1 ELSE 0 END ),2) AS construcao_ferramentas_ferramentas,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'construcao_ferramentas_iluminacao'THEN 1 ELSE 0 END ),2) AS construcao_ferramentas_iluminacao,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'construcao_ferramentas_jardim'THEN 1 ELSE 0 END ),2) AS construcao_ferramentas_jardim,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'construcao_ferramentas_seguranca'THEN 1 ELSE 0 END ),2) AS construcao_ferramentas_seguranca,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'cool_stuff'THEN 1 ELSE 0 END ),2) AS cool_stuff,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'dvds_blu_ray'THEN 1 ELSE 0 END ),2) AS dvds_blu_ray,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'eletrodomesticos'THEN 1 ELSE 0 END ),2) AS eletrodomesticos,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'eletrodomesticos_2'THEN 1 ELSE 0 END ),2) AS eletrodomesticos_2,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'eletronicos'THEN 1 ELSE 0 END ),2) AS eletronicos,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'eletroportateis'THEN 1 ELSE 0 END ),2) AS eletroportateis,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'esporte_lazer'THEN 1 ELSE 0 END ),2) AS esporte_lazer,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'fashion_bolsas_e_acessorios'THEN 1 ELSE 0 END ),2) AS fashion_bolsas_e_acessorios,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'fashion_calcados'THEN 1 ELSE 0 END ),2) AS fashion_calcados,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'fashion_esporte'THEN 1 ELSE 0 END ),2) AS fashion_esporte,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'fashion_roupa_feminina'THEN 1 ELSE 0 END ),2) AS fashion_roupa_feminina,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'fashion_roupa_infanto_juvenil'THEN 1 ELSE 0 END ),2) AS fashion_roupa_infanto_juvenil,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'fashion_roupa_masculina'THEN 1 ELSE 0 END ),2) AS fashion_roupa_masculina,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'fashion_underwear_e_moda_praia'THEN 1 ELSE 0 END ),2) AS fashion_underwear_e_moda_praia,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'ferramentas_jardim'THEN 1 ELSE 0 END ),2) AS ferramentas_jardim,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'flores'THEN 1 ELSE 0 END ),2) AS flores,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'fraldas_higiene'THEN 1 ELSE 0 END ),2) AS fraldas_higiene,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'industria_comercio_e_negocios'THEN 1 ELSE 0 END ),2) AS industria_comercio_e_negocios,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'informatica_acessorios'THEN 1 ELSE 0 END ),2) AS informatica_acessorios,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'instrumentos_musicais'THEN 1 ELSE 0 END ),2) AS instrumentos_musicais,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'la_cuisine'THEN 1 ELSE 0 END ),2) AS la_cuisine,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'livros_importados'THEN 1 ELSE 0 END ),2) AS livros_importados,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'livros_interesse_geral'THEN 1 ELSE 0 END ),2) AS livros_interesse_geral,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'livros_tecnicos'THEN 1 ELSE 0 END ),2) AS livros_tecnicos,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'malas_acessorios'THEN 1 ELSE 0 END ),2) AS malas_acessorios,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'market_place'THEN 1 ELSE 0 END ),2) AS market_place,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'moveis_colchao_e_estofado'THEN 1 ELSE 0 END ),2) AS moveis_colchao_e_estofado,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'moveis_cozinha_area_de_servico_jantar_e_jardim'THEN 1 ELSE 0 END ),2) AS moveis_cozinha_area_de_servico_jantar_e_jardim,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'moveis_decoracao'THEN 1 ELSE 0 END ),2) AS moveis_decoracao,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'moveis_escritorio'THEN 1 ELSE 0 END ),2) AS moveis_escritorio,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'moveis_quarto'THEN 1 ELSE 0 END ),2) AS moveis_quarto,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'moveis_sala'THEN 1 ELSE 0 END ),2) AS moveis_sala,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'musica'THEN 1 ELSE 0 END ),2) AS musica,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'papelaria'THEN 1 ELSE 0 END ),2) AS papelaria,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'pc_gamer'THEN 1 ELSE 0 END ),2) AS pc_gamer,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'pcs'THEN 1 ELSE 0 END ),2) AS pcs,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'perfumaria'THEN 1 ELSE 0 END ),2) AS perfumaria,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'pet_shop'THEN 1 ELSE 0 END ),2) AS pet_shop,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'portateis_casa_forno_e_cafe'THEN 1 ELSE 0 END ),2) AS portateis_casa_forno_e_cafe,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'portateis_cozinha_e_preparadores_de_alimentos'THEN 1 ELSE 0 END ),2) AS portateis_cozinha_e_preparadores_de_alimentos,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'relogios_presentes'THEN 1 ELSE 0 END ),2) AS relogios_presentes,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'seguros_e_servicos'THEN 1 ELSE 0 END ),2) AS seguros_e_servicos,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'sinalizacao_e_seguranca'THEN 1 ELSE 0 END ),2) AS sinalizacao_e_seguranca,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'tablets_impressao_imagem'THEN 1 ELSE 0 END ),2) AS tablets_impressao_imagem,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'telefonia'THEN 1 ELSE 0 END ),2) AS telefonia,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'telefonia_fixa'THEN 1 ELSE 0 END ),2) AS telefonia_fixa,
         ROUND( 100 * AVG( CASE WHEN product_category_name = 'utilidades_domesticas'THEN 1 ELSE 0 END ),2) AS utilidades_domesticas
    FROM tb_products
ORDER BY product_category_name;


-- Learning IS NULL

SELECT *
     CASE WHEN product_category_name IS NULL THEN 'esse caralho é nulo' ELSE product_category_name END as product_category_name
FROM tb_products;


-- Learning coalesce

SELECT *
     CASE WHEN product_category_name IS NULL THEN 'esse caralho é nulo' ELSE product_category_name END as product_category_name
   , coalesce(product_category_name, 'esse caralho é nulo') as categoria_nova_coalesce
 --, coalesce(tel_principal, tel_2, cel_1, cel_2, 0) as contato_util
FROM tb_products;


-- Analisando tb_orders
  SELECT customer_id,
         count(distinct order_id) as qtd_pedidos_dist
    FROM tb_orders
GROUP BY customer_id
ORDER BY COUNT(DISTINCT order_id) DESC 

-- Como eu sei que um pedido atrasou?

  SELECT *
       , CASE WHEN DATE (order_delivered_customer_date) > DATE (order_estimated_delivery_date) THEN 1 ELSE 0 END as flag_atraso
    FROM tb_orders