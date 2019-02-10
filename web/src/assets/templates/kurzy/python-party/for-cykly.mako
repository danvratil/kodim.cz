<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Seznamy a FOR cykly jsou v programování něco jako hrnec a vařečka při vaření. Bez nich toho moc neuvaříme a bez FOR cyklů a seznamů si taky moc nezaprogramujeme. Možnosti jak využít FOR cyklus jsou nepřeberné a proto je potřeba s nimi umět pořádně zacházet dřív, než se vydáme kamkoliv dál. </p>

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