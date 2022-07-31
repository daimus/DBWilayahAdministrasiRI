select substr(`administrative_area`.`area_code`, 1, 2) AS `kode_provinsi`,
    substr(`administrative_area`.`area_code`, 3, 2) AS `kode_kabupatenkota`,
    substr(`administrative_area`.`area_code`, 5, 2) AS `kode_kecamatan`,
    substr(`administrative_area`.`area_code`, 7, 4) AS `kode_kelurahan`,
    `administrative_area`.`area_name`               AS `nama_kelurahan`
from `administrative_area`
where ((substr(`administrative_area`.`area_code`, 7, 4) <> 0) and
    (substr(`administrative_area`.`area_code`, 7, 1) = 1));