*&---------------------------------------------------------------------*
*& Report ZMERT_P010
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZMERT_P010.

* veri sözlüğündeki ZYAPI tanımı.
DATA : gs_data TYPE zyapi,
       gt_data TYPE TABLE OF zyapi,
       gv_sayi TYPE i.

* tabloya değer atıyoruz
CLEAR gs_data.
gs_data-isim = 'Buğra'.
gs_data-soyisim = 'Şentürk'.
gs_data-ulke = 'Türkiye'.
gs_data-okul = 'Ege Üni.'.
gs_data-sehir = 'Manisa'.
APPEND gs_data TO gt_data.

CLEAR gs_data.
gs_data-isim = 'Mert'.
gs_data-soyisim = 'Altuntaş'.
gs_data-ulke = 'Türkiye'.
gs_data-okul = 'Beykoz Ü.'.
gs_data-sehir = 'Tokat'.
APPEND gs_data TO gt_data.

CLEAR gs_data.
gs_data-isim = 'Ali'.
gs_data-soyisim = 'Bentürk'.
gs_data-ulke = 'Türkiye'.
gs_data-okul = 'Akd. Üni.'.
gs_data-sehir = 'Antalya'.
APPEND gs_data TO gt_data.

CLEAR gv_sayi.
LOOP AT gt_data INTO gs_data.
  WRITE :/ gs_data-isim, gs_data-soyisim,
  gs_data-ulke, gs_data-okul,
  gs_data-sehir.
  NEW-LINE.
  gv_sayi = gv_sayi + 1.
ENDLOOP.
ULINE.
WRITE :/ 'Tabloda yer alan kayıt sayısı : ', gv_sayi.