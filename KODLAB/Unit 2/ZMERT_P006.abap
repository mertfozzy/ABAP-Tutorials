*&---------------------------------------------------------------------*
*& Report ZMERT_P006
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmert_p006.

*a structure example
DATA: BEGIN OF gs_str1,
        ad        TYPE c LENGTH 15,
        soyad     TYPE c LENGTH 15,
        yas       TYPE i,
        cinsiyet  TYPE c LENGTH 5,
        dogumyeri TYPE c LENGTH 20,
      END OF gs_str1.

*creating table :
DATA : gt_table1 LIKE TABLE OF gs_str1.

*creating table with standart :
DATA : gt_table2 LIKE STANDARD TABLE OF gs_str1.

** ----> table1 ve table2 islev acisinden tamamen ayni


PARAMETERS : gp_ad    TYPE c LENGTH 15 OBLIGATORY,
             gp_soyad TYPE c LENGTH 15 OBLIGATORY,
             gp_yas   TYPE i OBLIGATORY,
             gp_cnsyt TYPE c LENGTH 5 OBLIGATORY,
             gp_birth TYPE c LENGTH 20 OBLIGATORY,
             gp_marr  TYPE c LENGTH 15.

*matching parameters with structure :
gs_str1-ad = gp_ad.
gs_str1-soyad = gp_soyad.
gs_str1-yas = gp_yas.
gs_str1-cinsiyet = gp_cnsyt.
gs_str1-dogumyeri = gp_birth.