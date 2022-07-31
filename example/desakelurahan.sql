select substr(`administrative_area`.`area_code`, 1, 2)  AS `kode_provinsi`,
    substr(`administrative_area`.`area_code`, 1, 4)  AS `kode_kabupatenkota`,
    substr(`administrative_area`.`area_code`, 1, 6)  AS `kode_kecamatan`,
    substr(`administrative_area`.`area_code`, 1, 10) AS `kode_desakelurahan`,
    `administrative_area`.`area_name`                AS `nama_desakelurahan`
from `administrative_area`
where (substr(`administrative_area`.`area_code`, 7, 4) <> 0);