# Check-MTL-Validation
MATLAB Scripts to check the validity of the MTL expressions used in the Channel Simulator

We will start by checking the similarity between the Clayton expressions used in the JSAC and the theoretical expressions found in the Clayton. First, simple transmission lines will be tested, then some longer and more complex lines will be checked against each other.

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

--------- Contents ---------

1 - Ultra short lines (3 wires, 0.1 cm long, 5 cm separated)
2 - Simple lines (3 wires, 5 cm long, 5 cm separated)
3 - Slightly longer lines (3 wires, 20 cm long, 5 cm separated)
