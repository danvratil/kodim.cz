# Čísla a řetězce

## Jednoduchá aritmetika
Použijte Python konzoli jako kalkulačku:

1. Jeden lístek do divadla *Pěst na oko* stojí 12 euro. Spočítejte měsíční příjem divadla ze vstupného přichází-li průměrně 174 návštěvníků na jedno představení a divadlo hraje 15 představení měsíčně.

   ```
   >>> 15 * 174 * 12
   31320
   ```

1. Divadlo se rozhodlo prodávat studentské vstupné ve výši 65% plného vstupného. Jak se změní měsíční příjem divadla pokud víme, že polovina návštěvníků jsou studenti?

   ```
   >>> 174 / 2
   87.0
   >>> 15 * (87 * 12 * 0.65 + 87 * 12)
   25839.0
   ```

## Hrátky s řetězci

1. Vytvořte řetězec obsahující jméno divadla.

   ```
   >>> 'Pěst na oko'
   'Pěst na oko'
   ```

1. Vytvořte řetězec obsahující jméno divadla tak, že sečtete dohromady jednotlivá slova toho jména.

   ```
   >>> 'Pěst ' + 'na ' + 'oko'
   'Pěst na oko'
   ```

1. Zkuste vynásobit řetězec celým číslem. Jaký jste dostali výsledek?

   ```
   >>> 'oko' * 6
   'okookookookookooko'
   ```

1. Vytvořte řetězec který vypadá takto: '111111000000', ale místo šesti jedniček a šesti nul obsahuje 256 jedniček a 256 nul.

   ```
   >>> '1' * 256 + '0' * 256
   '11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
   ```