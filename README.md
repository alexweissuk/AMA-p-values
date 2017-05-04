The R function generated here converts any vector of p-values into
the style used by journals that adhere to American Medical Association
guidelines, e.g., JAMA and Psychosomatic Medicine.

The guidelines are as follows:
1. p < 0.001 is reported "p < 0.001"
2. p < 0.1 is reported to three digits, e.g., p = 0.03521 -> "p = 0.035"
3. p >= 0.1 is reported to two digits, e.g., p = 0.10123 -> "p = 0.10"
4. p > 0.99 is reported "p > 0.99"

Please check to make sure it is working and don't blindly trust it at
this stage and feel free to modify it as you please.

Function that will be added later:

Allow user to omit leading zeros.