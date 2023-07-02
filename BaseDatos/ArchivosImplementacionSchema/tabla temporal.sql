-- creacion nueva tabla temporal

drop table nueva_tabla;
CREATE TABLE nueva_tabla (
  id int,
  ciudad CHAR(10),
  provincia CHAR(2),
  canton CHAR(2),
  parroquia CHAR(2)
);

INSERT INTO nueva_tabla (id, ciudad, provincia, canton, parroquia)
SELECT ROW_NUMBER() OVER (ORDER BY columna_varchar) AS id,
       columna_varchar,
       LEFT(columna_varchar, 2) AS columna1,
       SUBSTRING(columna_varchar, 3, 2) AS columna2,
       SUBSTRING(columna_varchar, 5, 2) AS columna3
FROM (
  SELECT
    ciudad,
    CASE
      WHEN LENGTH(CAST(ciudad AS CHAR)) = 5 THEN CONCAT('0', CAST(ciudad AS CHAR))
      ELSE CAST(ciudad AS CHAR)
    END AS columna_varchar
  FROM vivienda.enemdu_vivienda
) AS subconsulta;


-- creacion nueva tabla 2

CREATE TABLE nueva_tabla2 (
  id int,
  ciudad CHAR(10),
  provincia CHAR(2),
  canton CHAR(2),
  parroquia CHAR(2)
);

INSERT INTO nueva_tabla2 (id, ciudad, provincia, canton, parroquia)
SELECT ROW_NUMBER() OVER (ORDER BY columna_varchar) AS id,
       columna_varchar,
       LEFT(columna_varchar, 2) AS columna1,
       SUBSTRING(columna_varchar, 3, 2) AS columna2,
       SUBSTRING(columna_varchar, 5, 2) AS columna3
FROM (
  SELECT
    ciudad,
    CASE
      WHEN LENGTH(CAST(ciudad AS CHAR)) = 5 THEN CONCAT('0', CAST(ciudad AS CHAR))
      ELSE CAST(ciudad AS CHAR)
    END AS columna_varchar
  FROM vivienda.enemdu_vivienda_final
) AS subconsulta;












