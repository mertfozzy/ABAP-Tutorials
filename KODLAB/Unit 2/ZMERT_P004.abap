*&---------------------------------------------------------------------*
*& Report ZMERT_P004
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZMERT_P004.

* ** ZORUNLU ALANLAR ** : bunun icin OBLIGATORY kismini koda eklersin.

PARAMETERS : gp_ad TYPE c LENGTH 15 OBLIGATORY,
      gp_soyad TYPE c LENGTH 15 OBLIGATORY.

DATA : gv_tamIsım TYPE c LENGTH 30.

CONCATENATE gp_ad gp_soyad into gv_tamIsım SEPARATED BY ' '.

WRITE :/ 'Your Fullname is : ', gv_tamIsım.

*bu haliyle calistirildiginda parametreler teknik isim ile gorunur.
*onlemek icin goto - text elements - selection texts sekmesi duzenlenmeli.