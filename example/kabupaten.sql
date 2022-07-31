select substr(`administrative_area`.`area_code`, 1, 2) AS `kode_provinsi`,
    substr(`administrative_area`.`area_code`, 3, 2) AS `kode_kabupaten`,
    `administrative_area`.`area_name`               AS `nama_kabupaten`
from `administrative_area`
where ((substr(`administrative_area`.`area_code`, 3, 2) <> 0) and
    (substr(`administrative_area`.`area_code`, 5, 6) = 0) and (substr(`administrative_area`.`area_code`, 3, 1) < 7));