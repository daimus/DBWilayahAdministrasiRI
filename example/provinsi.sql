select substr(`administrative_area`.`area_code`, 1, 2) AS `kode_provinsi`,
    `administrative_area`.`area_name`               AS `nama_provinsi`
from `administrative_area`
where (substr(`administrative_area`.`area_code`, 3, 8) = 0);