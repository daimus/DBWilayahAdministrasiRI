select substr(`administrative_area`.`area_code`, 1, 2) AS `kode_provinsi`,
    substr(`administrative_area`.`area_code`, 1, 4) AS `kode_kabkota`,
    `administrative_area`.`area_name`               AS `nama_kabkota`
from `administrative_area`
where ((substr(`administrative_area`.`area_code`, 3, 2) <> 0) and
    (substr(`administrative_area`.`area_code`, 5, 6) = 0));