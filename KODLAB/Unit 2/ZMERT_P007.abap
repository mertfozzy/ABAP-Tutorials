*&---------------------------------------------------------------------*
*& Report ZMERT_P007
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmert_p007.

PARAMETERS : pa_num1 TYPE i,
             pa_num2 TYPE i,
             pa_opr  TYPE c.

DATA : pa_sonuc TYPE p DECIMALS 2,
       gv_text  TYPE c LENGTH 50.


CLEAR: pa_sonuc, gv_text.

IF pa_opr = '+'.
  pa_sonuc = pa_num1 + pa_num2.
  gv_text = 'Toplama islemi yaptiniz.'.

ELSEIF pa_opr = '-'.

  IF pa_num1 > pa_num2.
    pa_sonuc = pa_num1 - pa_num2.
    gv_text = 'Cikarma islemi yaptiniz.'.
  ELSEIF pa_num1 < pa_num2.
    pa_sonuc = pa_num2 - pa_num1.
    gv_text = 'Cikarma islemi yaptiniz.'.
  ENDIF.

ELSEIF pa_opr = '*'.
  pa_sonuc = pa_num1 * pa_num2.
  gv_text = 'Carpma islemi yaptiniz.'.

ELSEIF pa_opr = '/'.

  IF pa_num1 = 0.
    gv_text = 'Gecersiz islem.'.

  ELSEIF pa_num2 = 0.
    gv_text = 'Gecersiz islem.'.

  ELSE.
    IF pa_num1 > pa_num2.
      pa_sonuc = pa_num1 / pa_num2.
      gv_text = 'Bolme islemi yaptiniz.'.
    ELSEIF pa_num1 < pa_num2.
      pa_sonuc = pa_num2 / pa_num1.
      gv_text = 'Bolme islemi yaptiniz.'..
    ENDIF.
  ENDIF.
ENDIF.

WRITE :/ gv_text.
NEW-LINE.
WRITE :/ 'Sonuç : ', pa_sonuc.