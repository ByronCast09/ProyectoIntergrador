
UPDATE enemdu_vivienda SET area = 'urbano' WHERE area = 1;
UPDATE enemdu_vivienda SET area = 'rural' WHERE area = 2;

alter table enemdu_vivienda
modify panelm text null;
UPDATE enemdu_vivienda SET panelm = 'Panel D21' WHERE panelm = 025;
UPDATE enemdu_vivienda SET panelm = 'Panel A21' WHERE panelm = 037;
UPDATE enemdu_vivienda SET panelm = 'Panel B21' WHERE panelm = 028;
UPDATE enemdu_vivienda SET panelm = 'Panel C21' WHERE panelm = 029;

alter table enemdu_vivienda
modify vivienda text null;
UPDATE enemdu_vivienda
SET vivienda = CASE vivienda
              WHEN 1 THEN 'Vivienda Uno'
              WHEN 2 THEN 'Vivienda Dos'
              WHEN 3 THEN 'Vivienda Tres'
              WHEN 4 THEN 'Vivienda Cuatro'
              WHEN 5 THEN 'Vivienda Cinco'
              WHEN 6 THEN 'Vivienda Seis'
              WHEN 7 THEN 'Vivienda Siete'
              WHEN 8 THEN 'Vivienda Ocho'
              WHEN 9 THEN 'Vivienda Nueve'
              WHEN 10 THEN 'Vivienda Diez'
              ELSE vivienda -- Opcional: mantener el valor existente si no coincide con 1 o 2
           END
WHERE vivienda IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

alter table enemdu_vivienda
modify hogar text null;
UPDATE enemdu_vivienda
SET hogar= CASE hogar
              WHEN 1 THEN 'Hogar Uno'
              WHEN 2 THEN 'Hogar Dos'
              WHEN 3 THEN 'Hogar Tres'
              WHEN 4 THEN 'Hogar Cuatro'
              WHEN 5 THEN 'Hogar Cinco'
              ELSE hogar-- Opcional: mantener el valor existente si no coincide con 1 o 2
           END
WHERE hogar IN (1, 2,3,4,5);

alter table enemdu_vivienda
modify accesoVivienda text null;
UPDATE enemdu_vivienda
SET accesoVivienda= CASE accesoVivienda
              WHEN 1 THEN 'Carretera, calle pavimentada'
              WHEN 2 THEN 'Empedrado'
              WHEN 3 THEN 'Lastrado, calle de tierra'
              WHEN 4 THEN 'Sendero'
              WHEN 5 THEN 'Río, mar'
              WHEN 6 THEN 'Otro'
              ELSE accesoVivienda-- Opcional: mantener el valor existente si no coincide con 1 o 2
           END
WHERE accesoVivienda IN (1, 2,3,4,5,6);

alter table enemdu_vivienda
modify cuviertaTecho text null;
UPDATE enemdu_vivienda
SET cuviertaTecho= CASE cuviertaTecho
              WHEN 1 THEN 'Hormigón (losa, cemento)'
              WHEN 2 THEN 'Fibrocemento,asbesto (eternit, eurolit)'
              WHEN 3 THEN 'Zinc, Aluminio'
              WHEN 4 THEN 'Teja'
              WHEN 5 THEN 'Palma, paja u hoja'
              WHEN 6 THEN 'Otro Material'
              ELSE cuviertaTecho
           END
WHERE cuviertaTecho IN (1, 2,3,4,5,6);

alter table enemdu_vivienda
modify cuviertaEstado text null;
UPDATE enemdu_vivienda
SET cuviertaEstado= CASE cuviertaEstado
              WHEN 1 THEN 'Bueno'
              WHEN 2 THEN 'Regular'
              WHEN 3 THEN 'Malo'
              ELSE cuviertaEstado
           END
WHERE cuviertaEstado IN (1, 2,3);

alter table enemdu_vivienda
modify pisoMaterial text null;
UPDATE enemdu_vivienda
SET pisoMaterial= CASE pisoMaterial
              WHEN 1 THEN 'Duela, parquet, tablón tratado o piso flotante'
              WHEN 2 THEN 'Cerámica, baldosa, vinil o porcelanato'
              WHEN 3 THEN 'Mármol o marmetón'
              WHEN 4 THEN 'Ladrillo o cemento'
              WHEN 5 THEN 'Tabla / tablón no tratado'
              WHEN 6 THEN 'Caña'
              WHEN 7 THEN 'Tierra'
              WHEN 8 THEN 'Otro Material'
              ELSE pisoMaterial
           END
WHERE pisoMaterial IN (1, 2,3,4,5,6,7,8);

alter table enemdu_vivienda
modify pisoEstado text null;
UPDATE enemdu_vivienda
SET pisoEstado= CASE pisoEstado
              WHEN 1 THEN 'Bueno'
              WHEN 2 THEN 'Regular'
              WHEN 3 THEN 'Malo'
              ELSE pisoEstado
           END
WHERE pisoEstado IN (1, 2,3);

alter table enemdu_vivienda
modify paredMaterial text null;
UPDATE enemdu_vivienda
SET paredMaterial = CASE paredMaterial
              WHEN 1 THEN 'Hormigón/Ladrillo o Bloque'
              WHEN 2 THEN 'Asbesto/Cemento (Fibrolit)'
              WHEN 3 THEN 'Adobe o Tapia'
              WHEN 4 THEN 'Madera'
              WHEN 5 THEN 'Caña revestida o bahareque'
              WHEN 6 THEN 'Caña no revestida o estera'
              WHEN 7 THEN 'Otro Material'
              ELSE paredMaterial
           END
WHERE paredMaterial IN (1, 2,3,4,5,6,7);

alter table enemdu_vivienda
modify paredEstado text null;
UPDATE enemdu_vivienda
SET paredEstado= CASE paredEstado
              WHEN 1 THEN 'Bueno'
              WHEN 2 THEN 'Regular'
              WHEN 3 THEN 'Malo'
              ELSE paredEstado
           END
WHERE paredEstado IN (1, 2,3);

alter table enemdu_vivienda
modify cuartoCocina text null;
UPDATE enemdu_vivienda
SET cuartoCocina= CASE cuartoCocina
              WHEN 1 THEN 'Si'
              WHEN 2 THEN 'No'
              ELSE cuartoCocina
           END
WHERE cuartoCocina IN (1, 2);

alter table enemdu_vivienda
modify materialesCocinan text null;
UPDATE enemdu_vivienda
SET materialesCocinan= CASE materialesCocinan
              WHEN 1 THEN 'Gas'
              WHEN 2 THEN 'Leña, carbón'
              WHEN 3 THEN 'Electricidad'
              WHEN 4 THEN 'Otro'
              ELSE materialesCocinan-- Opcional: mantener el valor existente si no coincide con 1 o 2
           END
WHERE materialesCocinan IN (1, 2,3,4);

alter table enemdu_vivienda
modify tipoServicioHigienico text null;
UPDATE enemdu_vivienda
SET tipoServicioHigienico= CASE tipoServicioHigienico
              WHEN 1 THEN 'Excusado y alcantarillado'
              WHEN 2 THEN 'Excusado y pozo séptico'
              WHEN 3 THEN 'Excusado y pozo ciego'
              WHEN 4 THEN 'Letrina'
              WHEN 5 THEN 'No tiene'
              ELSE tipoServicioHigienico
           END
WHERE tipoServicioHigienico IN (1, 2,3,4,5);

alter table enemdu_vivienda
modify abastecimientoEco text null;
UPDATE enemdu_vivienda
SET abastecimientoEco= CASE abastecimientoEco
              WHEN 1 THEN 'Si'
              WHEN 2 THEN 'No'
              ELSE abastecimientoEco
           END
WHERE abastecimientoEco IN (1, 2);

alter table enemdu_vivienda
modify abastecimientoElectricidad text null;
UPDATE enemdu_vivienda
SET abastecimientoElectricidad= CASE abastecimientoElectricidad
              WHEN 1 THEN 'Si'
              WHEN 2 THEN 'No'
              ELSE abastecimientoElectricidad
           END
WHERE abastecimientoElectricidad IN (1, 2);

alter table enemdu_vivienda
modify abastecimientoGas text null;
UPDATE enemdu_vivienda
SET abastecimientoGas = CASE abastecimientoGas
              WHEN 1 THEN 'Si'
              WHEN 2 THEN 'No'
              ELSE abastecimientoGas
           END
WHERE abastecimientoGas IN (1, 2);

alter table enemdu_vivienda
modify periodo text null;
UPDATE enemdu_vivienda
SET periodo = CASE periodo
              WHEN 202301 THEN 'ene-23'
              WHEN 202302 THEN 'feb-23'
              WHEN 202303 THEN 'mar-23'
              ELSE periodo
           END
WHERE periodo IN (1, 2, 3);






-- 21 -----------------------------------------------------------------------------------------

alter table enemdu_vivienda
modify noServicioHigienicoEntonces text null;
UPDATE enemdu_vivienda
SET noServicioHigienicoEntonces = CASE noServicioHigienicoEntonces
                                  WHEN 1 THEN 'Descarga directa al mar, río, lago o quebrada'
                                  WHEN 2 THEN 'Van al monte, campo, bota la basura en paquete'
                                  WHEN 3 THEN 'Usan una instalación sanitaria cercana y/o prestada'
                                  ELSE noServicioHigienicoEntonces
                                END
WHERE noServicioHigienicoEntonces IN (1, 2, 3);

-- 22
alter table enemdu_vivienda
modify instalacionSanitariaCercanaOPrestada text null;
UPDATE enemdu_vivienda
SET instalacionSanitariaCercanaOPrestada = CASE instalacionSanitariaCercanaOPrestada
                                  WHEN 1 THEN 'Excusado y alcantarillado'
                                  WHEN 2 THEN 'Excusado y pozo séptico'
                                  WHEN 3 THEN 'Excusado y pozo ciego'
          WHEN 4 THEN 'Letrina'
                                  ELSE instalacionSanitariaCercanaOPrestada
                                END
WHERE instalacionSanitariaCercanaOPrestada IN (1, 2, 3, 4);

-- 23
alter table enemdu_vivienda
modify dondeObtieneAgua text null;
UPDATE enemdu_vivienda
SET dondeObtieneAgua = CASE dondeObtieneAgua
                                  WHEN 1 THEN 'Red pública'
                                  WHEN 2 THEN 'Pila o llave pública'
                                  WHEN 3 THEN 'Otra fuente por tubería'
          WHEN 4 THEN 'Carro repartidor, triciclo'
          WHEN 5 THEN 'Pozo'
                                  WHEN 6 THEN 'Río, vertiente, acequia'
          WHEN 7 THEN 'Otro'
                                  ELSE dondeObtieneAgua
                                END
WHERE dondeObtieneAgua IN (1, 2, 3, 4, 5, 6, 7);

-- 24
alter table enemdu_vivienda
modify tieneMedidorAgua text null;
UPDATE enemdu_vivienda
SET tieneMedidorAgua = CASE tieneMedidorAgua
                                  WHEN 1 THEN 'Si'
                                  WHEN 2 THEN 'No'
                                  ELSE tieneMedidorAgua
                                END
WHERE tieneMedidorAgua IN (1, 2);

-- 25
alter table enemdu_vivienda
modify esJuntaAgua text null;
UPDATE enemdu_vivienda
SET esJuntaAgua = CASE esJuntaAgua
                                  WHEN 1 THEN 'Si'
                                  WHEN 2 THEN 'No'
                                  ELSE esJuntaAgua
                                END
WHERE esJuntaAgua IN (1, 2);

-- 26
alter table enemdu_vivienda
modify aguaRecibelaVivienda text null;
UPDATE enemdu_vivienda
SET aguaRecibelaVivienda = CASE aguaRecibelaVivienda
                                  WHEN 1 THEN 'Por tubería dentro de la vivienda'
                                  WHEN 2 THEN 'Por tubería fuera de la vivienda pero en el lote'
          WHEN 3 THEN 'Por tubería fuera de la vivienda, lote o terreno'
                                  WHEN 4 THEN 'No recibe agua por tubería sino por otros medios'
                                  ELSE aguaRecibelaVivienda
                                END
WHERE aguaRecibelaVivienda IN (1, 2, 3, 4);

-- 27
alter table enemdu_vivienda
modify servicioDucha text null;
UPDATE enemdu_vivienda
SET servicioDucha = CASE servicioDucha
                                  WHEN 1 THEN 'Exclusivo del hogar'
                                  WHEN 2 THEN 'Compartido con otros hogares'
          WHEN 3 THEN 'No tiene'
                                  ELSE servicioDucha
                                END
WHERE servicioDucha IN (1, 2, 3);

-- 28
alter table enemdu_vivienda
modify tipoAlumbrado text null;
UPDATE enemdu_vivienda
SET tipoAlumbrado = CASE tipoAlumbrado
                                  WHEN 1 THEN 'Empresa eléctrica públicar'
                                  WHEN 2 THEN 'Planta eléctrica privada'
          WHEN 3 THEN 'Vela, candil, mechero, gas'
         WHEN 4 THEN 'Ninguno'
                                  ELSE tipoAlumbrado
                                END
WHERE tipoAlumbrado IN (1, 2, 3, 4);

-- 29
alter table enemdu_vivienda
modify eliminaBasura text null;
UPDATE enemdu_vivienda
SET eliminaBasura = CASE eliminaBasura
                                  WHEN 1 THEN 'Contratan el servicio'
                                  WHEN 2 THEN 'Servicio municipal'
          WHEN 3 THEN 'Botan a la calle, quebrada, río'
         WHEN 4 THEN 'La queman, entierran'
        WHEN 5 THEN 'Otra'
                                  ELSE eliminaBasura
                                END
WHERE eliminaBasura IN (1, 2, 3, 4, 5);

-- 30
alter table enemdu_vivienda
modify tenenciaVivienda text null;
UPDATE enemdu_vivienda
SET tenenciaVivienda = CASE tenenciaVivienda
                                  WHEN 1 THEN 'En arriendo'
                                  WHEN 2 THEN 'Anticresis y/o arriendo'
          WHEN 3 THEN 'Propia y la está pagando'
         WHEN 4 THEN 'Propia y totalmente pagada'
        WHEN 5 THEN 'Cedida'
        WHEN 6 THEN 'Recibida por servicios'
        WHEN 7 THEN 'Otra'
                                  ELSE tenenciaVivienda
                                END
WHERE tenenciaVivienda IN (1, 2, 3, 4, 5, 6, 7);

-- 31 se salta porq es valor 99999

-- 32
alter table enemdu_vivienda
modify incluyePagoAgua text null;
UPDATE enemdu_vivienda
SET incluyePagoAgua = CASE incluyePagoAgua
                                  WHEN 1 THEN 'Si'
                                  WHEN 2 THEN 'No'
                                  ELSE incluyePagoAgua
                                END
WHERE incluyePagoAgua IN (1, 2);

-- 33
alter table enemdu_vivienda
modify incluyePagoLuz text null;
UPDATE enemdu_vivienda
SET incluyePagoLuz = CASE incluyePagoLuz
                                  WHEN 1 THEN 'Si'
                                  WHEN 2 THEN 'No'
                                    ELSE incluyePagoLuz
                                END
WHERE incluyePagoLuz IN (1, 2);










-- 34
alter table enemdu_vivienda
modify parentezcoPropietariovivienda text null;
UPDATE enemdu_vivienda
SET parentezcoPropietariovivienda = CASE parentezcoPropietariovivienda
                                  WHEN 1 THEN 'Si'
                                  WHEN 2 THEN 'No'
        ELSE parentezcoPropietariovivienda
                                END
WHERE parentezcoPropietariovivienda IN (1, 2);

-- 35
alter table enemdu_vivienda
modify tieneHogarVehiculos text null;
UPDATE enemdu_vivienda
SET tieneHogarVehiculos = CASE tieneHogarVehiculos
                                  WHEN 1 THEN 'Si'
                                  WHEN 2 THEN 'No'
        ELSE tieneHogarVehiculos
                                END
WHERE tieneHogarVehiculos IN (1, 2);

-- 36 TAMPOCO

-- 37
alter table enemdu_vivienda
modify tieneHogarMotos text null;
UPDATE enemdu_vivienda
SET tieneHogarMotos = CASE tieneHogarMotos
                                  WHEN 1 THEN 'Si'
                                  WHEN 2 THEN 'No'
        ELSE tieneHogarMotos
                                END
WHERE tieneHogarMotos IN (1, 2);

-- 38 TAMPOCO

-- 39
alter table enemdu_vivienda
modify abastesimientoSuper text null;
UPDATE enemdu_vivienda
SET abastesimientoSuper = CASE abastesimientoSuper
                                  WHEN 1 THEN 'Si'
                                  WHEN 2 THEN 'No'
        ELSE abastesimientoSuper
                                END
WHERE abastesimientoSuper IN (1, 2);

-- 40 TAMPOCO

-- 41
alter table enemdu_vivienda
modify abastesimientoEXTRA text null;
UPDATE enemdu_vivienda
SET abastesimientoEXTRA = CASE abastesimientoEXTRA
                                  WHEN 1 THEN 'Si'
                                  WHEN 2 THEN 'No'
        ELSE abastesimientoEXTRA
                                END
WHERE abastesimientoEXTRA IN (1, 2);

-- asta aqui 34 columnas cambiadas
alter table enemdu_vivienda
modify tipoVivienda text null;
UPDATE enemdu_vivienda
SET tipoVivienda = CASE tipoVivienda
                                  WHEN 1 THEN 'Casa o villa'
                                  WHEN 2 THEN 'Departamento'
                                  WHEN 3 THEN 'Cuartos en casa de inquilinato'
                                  WHEN 4 THEN 'Mediagua'
                                  WHEN 5 THEN 'Rancho, covacha'
                                  WHEN 6 THEN 'Choza'
                                  WHEN 7 THEN 'Otra'
        ELSE tipoVivienda
                                END
WHERE tipoVivienda IN (1, 2, 3, 4, 5, 6, 7);

