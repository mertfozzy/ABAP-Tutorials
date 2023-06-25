*&---------------------------------------------------------------------*
*& Report ZMERT_P003
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZMERT_P003.

DATA : gv_tarih1 TYPE d,
      gv_tarih2 TYPE d,
      gv_tarih3 TYPE c LENGTH 10,
      gv_gun type c LENGTH 2,
      gv_ay type c LENGTH 2,
      gv_yil type c LENGTH 4.

gv_tarih1 = SY-DATUM.

*day format is also added into write command
WRITE :/ 'Current Date : ', gv_tarih1 DD/MM/YYYY.

**************************************

gv_tarih2 = '20000319'.

*tarih2 degiskeni icerisindeki 6. karakterden sonra 2 degiskeni al
gv_gun = gv_tarih2+6(2).

*tarih2 degiskeni icerisindeki 4. karakterden sonra 2 degiskeni al
gv_ay = gv_tarih2+4(2).

*tarih2 degiskeni ilk 4 karakter
gv_yil = gv_tarih2(4).

CONCATENATE gv_gun '/' gv_ay '/' gv_yil INTO gv_tarih3.

WRITE :/ 'Custom Tarih : ', gv_tarih2.
WRITE :/ 'Gün : ', gv_gun.
WRITE :/ 'Ay : ', gv_ay.
WRITE :/ 'Yil : ', gv_yil.
WRITE :/ 'Concatenated Tarih : ', gv_tarih3.