*&---------------------------------------------------------------------*
*& Report ZMERT_P008
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmert_p008.

PARAMETERS : pa_tutar TYPE p DECIMALS 2,
             pa_doviz TYPE c LENGTH 3.

DATA : gv_karsilik TYPE p DECIMALS 2.

CONSTANTS : gc_usd TYPE p VALUE '26.06',
            gc_eur TYPE p VALUE '28.44',
            gc_str TYPE p VALUE '32.95'.

CASE pa_doviz.
  WHEN 'USD'.
    gv_karsilik = pa_tutar * gc_usd.
  WHEN 'EUR'.
    gv_karsilik = pa_tutar * gc_eur.
  WHEN 'STR'.
    gv_karsilik = pa_tutar * gc_str.
ENDCASE.

WRITE :/ 'Girdiğiniz ', pa_doviz, ' cinsi döviz değerinin TRY karşılığı : ', gv_karsilik.