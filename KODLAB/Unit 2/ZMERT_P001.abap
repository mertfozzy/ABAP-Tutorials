*&---------------------------------------------------------------------*
*& Report ZMERT_P001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZMERT_P001.

DATA : gv_ornekChar TYPE C LENGTH 4.
*gv_ornekChar = 'MERT'.
*aynısı aşağıda :
MOVE 'MERT' TO gv_ornekChar.
WRITE :/ 'gv_ornekChar : ', gv_ornekChar.

WRITE :/ '-------------------------'.

DATA gv_ornekInteger TYPE i.
gv_ornekInteger = 23.
WRITE :/ 'gv_ornekInteger : ', gv_ornekInteger.

WRITE :/ '-------------------------'.

DATA gv_ornekFloat TYPE f.
gv_ornekFloat = '23.52'.
WRITE :/ 'gv_ornekFloat : ', gv_ornekFloat.

WRITE :/ '-------------------------'.

DATA : gv_ornekNumeric TYPE n LENGTH 6.
gv_ornekNumeric = '2243242'.
WRITE :/ 'gv_ornekNumeric : ', gv_ornekNumeric.

WRITE :/ '-------------------------'.

DATA : gv_ornekDate TYPE d.
gv_ornekDate = '20000319'.
WRITE :/ 'gv_ornekDate : ', gv_ornekDate.

WRITE :/ '-------------------------'.

DATA : gv_ornekString TYPE string.
gv_ornekString = 'MERT 19 03 2000'.
WRITE :/ 'gv_ornekString : ', gv_ornekString.