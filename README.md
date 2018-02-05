# Check-MTL-Validation
MATLAB Scripts to check the validity of the MTL expressions used in the Channel Simulator. 

In this repository, a set of files can be found which try to assure the validity of the MTL procedure used in the JSAC.

--------- Contents ---------

1 - The first set of files, named "Lossless Exact Solution Clayton", compares the MTL procedure against the exact solution of the crosstalk voltage given in Page 361-365 Clayton (under a certain set of assumption: lossless line, homogeneus surrounding medium).

2 - The second set of files, named "Lossy MTL-BifilarTL", compares the MTL procedure against the widely studied bifilar transmission line. To do so, we place one of the conductors in the MTL line extremely far away from the rest of the conductors and it will only be conected to them through extremely high impedances (simulating open circuit).

--------- Clayton ---------

* MTL per-unit-length model: Pag 56

* MTL per-unit-length matrices: - L - Pag 51
                                - R - Pag 51
                                - C - Pag 55
                                - G - Pag 55

* MTL expressions:  - L - Pag 93 - Eqs 3.63a and 3.63b
                    - C - Pag 93 - Eq 3.64
                    - G - Pag 160 - Eq 3.173 (There is a different expression in Pag 93, but we use the one in Pag 160)
                    - R - Pag 167 - Eqs 3.202a and 3.202b

* Theoretical expression: Pag 365 

* MTL equivalent circuit (theoretical expression): Pag 361


