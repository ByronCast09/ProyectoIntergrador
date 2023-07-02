-- id_vivienda no se repita

-- este sirve
CREATE TABLE enemdu_vivienda_final AS
SELECT t.*
FROM enemdu_vivienda t
JOIN (
    SELECT id_vivienda, MIN(id) AS min_id
    FROM enemdu_vivienda
    GROUP BY id_vivienda
) sub
ON t.id_vivienda = sub.id_vivienda AND t.id = sub.min_id;





