*&---------------------------------------------------------------------*
*& Report ZMERT_P011
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZMERT_P011.

PARAMETERS : ps_metin TYPE string.
DATA gv_uzunluk TYPE i.

CLEAR gv_uzunluk.
gv_uzunluk = STRLEN( ps_metin ).

*uyarı mesaj tipi I
IF gv_uzunluk IS INITIAL.
  MESSAGE 'Metin alanına giriş yapılmadı!' TYPE 'I'.
ENDIF.

WRITE :/ 'Metnin karakter sayısı : ', gv_uzunluk.
SKIP 1.

WHILE ps_metin NE space.
    WRITE: sy-index, '. karakter', ': ', ps_metin(1).
    NEW-LINE.
    SHIFT ps_metin.
ENDWHILE.

* başarı mesahı tipi S
IF sy-subrc IS INITIAL.
    MESSAGE '======= Successful !! ========' TYPE 'S'.
ENDIF.