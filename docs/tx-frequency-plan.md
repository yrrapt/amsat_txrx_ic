# Transmit Frequency Plan

## Frequency Bands

| Band | Centre Frequency | Bandwidth |
| :--- | :--------------- | :-------- |
| S    | 2.4200 GHz       | 60 MHz    |
| C    | 5.7875 GHz       | 275 MHz   |
| X    | 10.2500 GHz      | 500 MHz   |

The C and X bands are nearly integer multiples of the S band. Therefore, two LOs are required to avoid an LO in the S band creating harmonics in the higher bands.

## Low LO

A low LO is examined first where the RF is generated from the IF + LO operation.

A first LO (LO1) will be used at 1.95 GHz to move the baseband to the IF. A second LO will be created to upconvert to the final RF frequency. The three LOs will be generated by a single synthesier with dividers used to create the lower frequencies.

| Name | LO2             |
| :--- | :-------------- |
| S    | 0.44 - 0.50 GHz |
| C    | 3.70 - 3.98 GHz |
| X    | 8.05 - 8.55 GHz |

To generate these frequencies a single frequency synthesiser will be used with frequency dividers used. The following table details the frequency range required by the phase locked loop.

| Name | LO2             | Divider Value | VCO Frequency   |
| :--- | :-------------- | :------------ | :-------------- |
| S    | 0.44 - 0.50 GHz | 16            | 7.04 - 8.00 GHz |
| C    | 3.70 - 3.98 GHz | 2             | 7.40 - 7.96 GHz |
| X    | 8.05 - 8.55 GHz | 1             | 8.05 - 8.55 GHz |

The phase locked loop must therefore be capable of creating frequencies from 7.04 - 8.55 GHz. A center frequency of 7.8 GHz and tuning range of +/- 9.7%.

Finally, the effects of harmonics from the LOs falling into the receive bands is examined. Below the harmonics of each of the frequency sources is displayed. We can see that no harmonic is too close to the receive bands.

| Frequency Source | 1    | 2     | 3     | 4     | 5     | 6     | 7     | 8     | 9     | 10    | 11     | 12     |
| :--------------- | :--- | :---- | :---- | :---- | :---- | :---- | :---- | :---- | :---- | :---- | :----- | :----- |
| LO S             | 0.47 | 0.94  | 1.41  | 1.88  | 2.35  | 2.82  | 3.29  | 3.76  | 4.23  | 4.70  | 9.40   | 14.10  |
| LO C             | 3.84 | 7.68  | 11.51 | 15.35 | 19.19 | 23.03 | 26.86 | 30.70 | 34.54 | 38.38 | 76.75  | 115.13 |
| LO X             | 8.30 | 16.60 | 24.90 | 33.2  | 41.50 | 49.80 | 58.10 | 66.40 | 74.70 | 83.00 | 166.00 | 249.00 |
| LO1              | 1.95 | 3.90  | 5.85  | 7.8   | 9.75  | 11.70 | 13.65 | 15.60 | 17.55 | 19.50 | 39.00  | 58.5   |

