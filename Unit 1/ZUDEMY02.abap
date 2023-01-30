REPORT ZUDEMY02.

data : BEGIN OF gs_employee,
  ad type c LENGTH 15,
  soyad type c LENGTH 15,
  title type c LENGTH 15,
  yas type i,
  END OF gs_employee.

data : BEGIN OF gs_manager.
  INCLUDE STRUCTURE gs_employee.
  data : department type c LENGTH 15,
  END OF gs_manager.

parameters : gp_isim type c length 15 OBLIGATORY,
gp_soyad type c length 15 OBLIGATORY.

WRITE : /'------------------'.

gs_employee-ad = 'Mert'.
gs_employee-soyad = 'Altuntaş'.
gs_employee-title = 'IT Intern'.
gs_employee-yas = 23.

WRITE : /'Çalışan adı : ', gs_employee-ad.
WRITE : /'Çalışan soyadı : ', gs_employee-soyad.
WRITE : /'Çalışan işlevi : ', gs_employee-title.
WRITE : /'Çalışan yaşı : ', gs_employee-yas.

WRITE : /'------------------'.

gs_manager-ad = 'Dilaver'.
gs_manager-soyad = 'Özel'.
gs_manager-title = 'IT Manager'.
gs_manager-yas = 43.
gs_manager-department = 'Information Technology'.

WRITE : /'Yönetici adı : ', gs_manager-ad.
WRITE : /'Yönetici soyadı : ', gs_manager-soyad.
WRITE : /'Yönetici işlevi : ', gs_manager-title.
WRITE : /'Yönetici yaşı : ', gs_manager-yas.
WRITE : /'Yönetici departmanı : ', gs_manager-department.