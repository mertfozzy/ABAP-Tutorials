*&---------------------------------------------------------------------*
*& Report ZMERT_P009
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmert_p009.

WRITE :/ 'Kullanıcı Bilgisi : ', sy-uname.
WRITE :/ 'Program Adı : ', sy-repid.
WRITE :/ 'Tarih : ', sy-datum.
WRITE :/ 'Saat : ', sy-uzeit.


IF sy-subrc = 0.
  WRITE :/ 'Bilgiler ekrana yazdırılmıştır.'.
ELSE.
  WRITE :/ 'Program fail olmuştur xD'.
ENDIF.