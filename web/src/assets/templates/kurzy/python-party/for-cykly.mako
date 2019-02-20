<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Seznamy a FOR cykly jsou v programování něco jako hrnec a vařečka při vaření. Bez nich toho moc neuvaříme a bez FOR cyklů a seznamů si taky moc nezaprogramujeme. Možnosti jak využít FOR cyklus jsou nepřeberné a proto je potřeba s nimi umět pořádně zacházet dřív, než se vydáme kamkoliv dál. </p>

  <h2>FOR cyklus pod drobnohledem</h2>

  <p>Cyklus FOR už jste potkali v minulé lekci, kde ovšem rozhodně nedostal tolik pozornosti, kolik si zaslouží. Vytvořme si proto modelový příklad, na kterém si ukážeme různá další zákoutí. Začneme se seznamem pohybů na nějakém bankovním účtu.</p>
  
  <pre>transactions = [2000, 8500, -3000, 2000, -6200, -5000, 4100, 5800]</pre>
  
  <p>Věřím, že cyklus, který prostě jen projde tento seznam a vypíše pohyby jeden po druhém na obrazovku, je pro váš již brnkačka. </p>
  
<pre>for trans in transactions:
  print(trans)
</pre>

  <p>Odsud je již krůček k cyklu, který vypíše jen mínusové pohyby, tedy úbytky na účtu.</p>

<pre>for trans in transactions:
  if trans < 0:
    print(trans)
</pre>

  <p>Všimněte si, že tyto cykly jsou tak trošku izolované od okolí. Pracují pouze s proměnnou <var>trans</var>, která je vytvořena uvnitř cyklu. Pokud však začneme pracovat i s proměnnými mimo cyklus, můžeme si pomocí nich udržovat různé průběžné informace. Například můžeme spočítat, kolikrát došlo k výběru z účtu. Na to si založíme proměnnou <var>count</var>, která začne s hodnotou nula a pokaždé, když v zůstatcích narazíme na částku menší než nula, navýšíme tuto proměnnou o jedničku. </p>

<pre>count = 0
for trans in transactions:
  if trans < 0:
    count += 1
print(count)
</pre>

  <p>Velmi podobně můžeme například spočítat konečný zůstatek na účtu. Vzhledem k tomu, že úbytky máme jako minusové hodnoty a přírůstky jako plusové, stačí všechny hodnoty v seznamu prostě posčítat. Na to si podobně jako v předchozím příkladu založíme proměnnou vně cyklu, tentokrát pojmenovanou <var>sum</var>, do které budeme postupně přičítat jednotlivé položky seznamu. </p>

<pre>sum = 0
for trans in transactions:
  sum += trans
print(sum)
</pre>

  <p>Následující příklady postupují od jednoduchých až po docela náročné, aby vás pomalu krok po kroku provedli krajinou různých programátorských problémů a jejich řešení. Při psaní vašich řešení nepoužívejte žádné vestavěné ani importované Python funkce, pokud nebude v úloze vysloveně uvedeno jinak.</p>

</%self:lesson>
<%self:exercises>
  <h2>Cvičení</h2>
  <p>Založte si nový Python program a na jeho začátek vložte následující seznam čísel. Budeme jej používat ve všech následujících úlohách.</p>

  <pre>numbers = [-24, -11, 27, 29, -4, -28, -21, -14, 3, -8, 24, 19, -25, -2, -1, 11, 32, -31, 5]</pre>

  <ol>
    <li>Vypište na výstup počet prvků v zadaném seznamu.</li>
    <li>Vypište na výstup číslo na indexu 13.</li>
    <li>Vypište na výstup číslo, které je přesně uprostřed zadaného seznamu.</li>
    <li>Vypište na výstup všechna čísla ze zadaného seznamu.</li>
    <li>Vypište na výstup druhé mocniný všech čísel.</li>
    <li>Vypište na výstup pouze záporná čísla ze seznamu.</li>
    <li>Vypište na výstup absolutní hodnotu všech čísel.</li>
    <li>Vypište na výstup pouze ta čísla, jejíchž abosolutní hodnota je dělitelná třemi.</li>
    <li>Vypište na výstup pouze sudá čísla.</li>
    <li>Vypište na výstup jak daleko je každé číslo v seznamu od čísla 5.</li>
    <li>Vypište na výstup druhé mocnicny vzdáleností všech čísel od čísla 5.</li>
    <li>Vypište na výstup všechna čísla, která jsou větší než jejich předchůdce.</li>
    <li>Vypište na výstup všechny vrcholy v daném seznamu. Vrchol je číslo, které je větší než jeho předchůdce i jeho následovník.</li>
    <li>Spočítejte, kolik je v seznamu záporných čísel.</li>
    <li>Spočítejte součet všech čísel v seznamu.</li>
    <li>Spočítejte průměr všech čísel v seznamu.</li>
    <li>Spočítejte součet všech pozitivních čísel v seznamu.</li>
    <li>Nejprve spočítejte průměr čísel v seznamu a výsledek si ulože do proměnné <var>mean</var>. Poté spočítejte součet druhých mocnin vzdáleností všech čísel od průměru.</li>
    <li>Spočítejte směrodatnou odchylku čísel v seznamu. To provedete tak, že nejprve spočítáte takzvaný rozptyl, což je průměr druhých mocnin vzdáleností všech čísel od průměru. Rozptyl pak odmocníte pomocí funkce <code>math.sqrt</code>.</li>
    <li>Najděte s seznamu největší prvek.</li>
    <li>Najděte s seznamu největší prvek, který je menší než číslo 16.</li>
    <li>Vypište na výstup délku nejdelší rostoucí sekvence čísel, které v seznamu následují přímo po sobě.</li>
    <li>Vypište na výstup délku nejdelší rostoucí nebo klesající sekvence čísel, které v seznamu následují přímo po sobě.</li>
    <li>Najděte druhý největší prvek v seznamu.</li>
    <li>Najděte nejnižší vrchol a nejvyšší údolí. Údolí je číslo, které je menší než jeho předchůdce i následovník.</li>
  </ol>
</%self:exercises>