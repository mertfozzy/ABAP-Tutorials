*&---------------------------------------------------------------------*
*& Report ZMERT_P002
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZMERT_P002.

DATA : gv_num1 TYPE i,
      gv_num2 TYPE i,
      gv_num3 TYPE p DECIMALS 3,
      gv_num4 TYPE p DECIMALS 3,
      gv_num5 TYPE p DECIMALS 3,
      gv_num6 TYPE p DECIMALS 3,
      gv_num7 TYPE p DECIMALS 3.


gv_num1 = 5.
gv_num2 = 20.
gv_num3 = gv_num1 + gv_num2.
gv_num4 = gv_num2 - gv_num1.
gv_num5 = gv_num1 * gv_num2.
gv_num6 = gv_num2 / gv_num1.
gv_num7 = gv_num2 MOD 3. "moduler operator

WRITE :/ 'First Number : ', gv_num1.
WRITE :/ 'Second Number : ', gv_num2.
WRITE :/ 'Sum of Numbers : ', gv_num3.
WRITE :/ 'Difference of Numbers : ', gv_num4.
WRITE :/ 'Multiply of Numbers : ', gv_num5.
WRITE :/ 'Divide of Numbers : ', gv_num6.
WRITE :/ 'Mod by 3 of second num : ', gv_num7.

write :/ '**********************'.