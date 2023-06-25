*&---------------------------------------------------------------------*
*& Report ZMERT_P005
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZMERT_P005.

*a structure example
DATA: BEGIN OF gs_str1,
  ad TYPE c LENGTH 15,
  soyad TYPE c LENGTH 15,
  yas TYPE i,
  cinsiyet TYPE c LENGTH 5,
  dogumYeri TYPE c LENGTH 20,
  END OF gs_str1.
* you can also perform types in here


PARAMETERS : gp_ad TYPE c LENGTH 15 OBLIGATORY,
             gp_soyad TYPE c LENGTH 15 OBLIGATORY,
             gp_yas TYPE i OBLIGATORY,
             gp_cnsyt TYPE c LENGTH 5 OBLIGATORY,
             gp_birth TYPE c LENGTH 20 OBLIGATORY,
             gp_marr TYPE c LENGTH 15.

*matching parameters with structure
gs_str1-ad = gp_ad.
gs_str1-soyad = gp_soyad.
gs_str1-yas = gp_yas.
gs_str1-cinsiyet = gp_cnsyt.
gs_str1-dogumYeri = gp_birth.

WRITE /: 'Structure 1 : ',
         gs_str1-ad ,
         gs_str1-soyad ,
         gs_str1-yas ,
         gs_str1-cinsiyet,
         gs_str1-dogumYeri.


************************
ULINE.
************************


*you can also refer another structures :
DATA: BEGIN OF gs_str2.
  INCLUDE STRUCTURE gs_str1.
  DATA : medeniDurum TYPE c LENGTH 15,
        END OF gs_str2.

*matching parameters with structure
gs_str2-ad = gp_ad.
gs_str2-soyad = gp_soyad.
gs_str2-yas = gp_yas.
gs_str2-cinsiyet = gp_cnsyt.
gs_str2-dogumYeri = gp_birth.
gs_str2-medeniDurum = gp_marr.

WRITE /: 'Structure 2 (Medeni Hal Added): ',
         gs_str2-ad ,
         gs_str2-soyad ,
         gs_str2-yas ,
         gs_str2-cinsiyet,
         gs_str2-dogumYeri,
         gs_str2-medeniDurum.