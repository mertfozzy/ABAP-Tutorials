*&---------------------------------------------------------------------*
*& Report ZMERT_P012
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZMERT_P012.

PARAMETERS : ps_metin TYPE string.
DATA gv_uzunluk TYPE i.

CLEAR gv_uzunluk.
gv_uzunluk = STRLEN( ps_metin ).

*zlcmes comes from se91, i created this.
IF gv_uzunluk IS INITIAL.
  MESSAGE e000(zlcmes).
ENDIF.

WRITE :/ 'Metnin karakter sayısı : ', gv_uzunluk.
SKIP 1.

WHILE ps_metin NE space.
    WRITE: sy-index, '. karakter', ': ', ps_metin(1).
    NEW-LINE.
    SHIFT ps_metin.
ENDWHILE.

*zlcmes comes from se91, i created this.
IF sy-subrc IS INITIAL.
    MESSAGE s000(zlcmes).
ENDIF.