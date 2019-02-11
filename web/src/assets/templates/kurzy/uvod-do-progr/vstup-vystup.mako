<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  
  <p>Nyní přichází na řadu velký zlom. Zatím jsme s Pythonem komunikovali pouze na konzoli a posílali jsme mu k vyhodnocení vždy pouze jeden příkaz. Když ale už umíme pracovat s proměnnými a funkcemi, můžeme vytvořit náš první program.</p> 

  <p>Program je v podstatě textový soubor, který obsahuje více příkazů najednou a Python tyto příkazy postupně vykonává. Nemusíme už tedy nic psát na konzoli, všechny příkazy budeme psát dovnitř programu.</p>

  <h2>Výstup do terminálu</h2>
  <p>Máme tu ale jeden problém. Když jsme zadávali příkazy na konzoli, Python nám vždy rovnou vrátil výsledek. Když ale spustíme program, Python nám automaticky žádné výsledky nevrací. Programy totiž často obsahují tisíce příkazů a my nechceme vidět výsledek každého z nich, to bychom se v tom množství výsledků nevyznali. Pokud tedy nějaký výsledek chceme vidět, musíme Pythonu přímo říct, aby ho vypsal do terminálu, ve kterém program spouštíme. K tomu slouží funkce <code>print()</code>. Vybavení touto funkcí už můžeme napsat náš první program. </p>

  <h2>První program</h2>

  <p>Vytvořme si ve Visual Studiu program s názvem <code>program.py</code> a do něj vložme následující řádky</p>

<pre>kurz = 25
cena = 12 * 25
print(cena)
</pre>

  <p>Toto je jednoduchý program, který nám spočítá cenu lístku v korunách podle kurzy 25 korun za euro. Takovýto program pak spustíme příkazem</p>

<pre>$ python program.py</pre>

  <%self:alert_warning>
    <p>Pozor na znak dolaru na začátku tohoto příkazu. Tento znak napíšeme! Znak dolaru pouze naznačuje, že tento příkaz musíme zadat do terminálu operačního systému, nikoliv do Python konzole. Pokud tedy váš příkazový řádek stále začíná třemi zobáčky jste ještě pořád uvnitř Python konzole a musíte z ní vyskočit pomocí funkce <code>exit()</code>.</p>
  </%self:alert_warning>

</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>

  <%self:exrc title="Jednoduchý výstup">
    <p>Náš vůbec první program nebude dělat nic víc, než vypisovat text na obrazovku.</p>
    <ol>
      <li>
        <p>Založte si program <code>vstup-vystup.py</code>. V tomto programu pomocí funkce <code>print()</code> vypište na obrazovku</p>
        
        <pre>Divadlo Pěst na oko</pre>

        <p>Program spusťte na konzoli a vyzkoušejte, že dělá co má.</p>
      </li>
      <li>
        <p>Upravte tento program tak, že do proměnné <var>nazev</var> uložíte název nějakého divadelního představení a do proměnné <var>cas</var> uložte čas konání tohoto představení. Nyní pomocí funkce <code>print()</code> nechte program vypsat na obrazovku na jeden řádek název představení a čas konání, např.</p>
        
        <pre>Zkrocení zlé ženy - 19:30</pre>
      </li>
      <li>
        <p>Upravte dále program tak, že do proměnné <var>hodina</var> uložíte hodinu konání představení (jako celé číslo) a do proměnné <var>minuta</var> minutu konání, také jako celé číslo. Zařiďte, aby výstup programu vypadal takto:</p>
        
        <pre>Zkrocení zlé ženy - 19:30</pre>
        
        <p>Pozor na to, že hodina a minuta je hodnota typu číslo, takže ji budete při výpisu muset převést na řetězec pomocí funkce <var>str()</var>.</p>
      </li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Jednoduchý vstup">
    <p>Teď už budeme chtít, aby náš program dokázal získat vstup od uživatele.</p>
    <ol>
      <li>Napište program <code>jmeno.py</code>, který získá jméno a příjmení od uživatele voláním funkce <code>input()</code>. Vypište je na obrazovku podobně jako v předchozím cvičení.</li>
      <li>Nechte uživatele zadat také věk. Pozor na to, že funkce <code>input()</code> vždy vrací řetězec, ale my chceme v proměnné <var>vek</var> mít číslo. Použijte tedy funkci <code>int()</code>, abyste převedli uživatelem zadaný řetězec na číslo. Opět vypište na obrazovku jméno příjmení a věk tak jako v předchozí verzi.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Zakázka pro divadlo">
    <p>Divadlo požaduje systém pro online rezervaci vstupenek na pořádaná představení. Váš první úkol na této zakázce je vytvořit registraci pro nové uživatele tohoto systému.</p>
    <ol>
      <li>Založte si program <code>vstupenky01.py</code>. Bude to první verze našeho programu pro nákup vstupenek.</li>
      <li>Napište program tak, aby nejprve vypsal na obrazovku "Divadlo Pěst na oko" na první řádek, na druhý řádek chceme vypsat "Vítejte v online rezervaci vstupenek" a na třetí řádek "Pro vstup do systému je potřeba registrace".</li>
      <li>Na dalším řádku požádejte uživatele o jeho uživatelské jméno a poté o jeho věk. Ten si uložte to nějaké proměnné jako číslo.</li>
    </ol>
  </%self:exrc>

  ${self.alert_done()}

  <h2>Bonusy</h2>

  <%self:exrc title="Házení kostkami">
    <p>Napište program <code>kostky.py</code>, který bude simulovat hod dvěma klasickými šestistěnnými kostkami. Jeho výstupu bude součet bodů na těchto dvou kostkách.</p>

    <p><strong>Nápověda:</strong></p> 
    <ul>
      <li>Generování náhodných čísel dělá funkce <code>random.randint()</code>.</li>
      <li>
        <p>Pokud chcete ve vašem programu použít modul <code>random</code>, musíte na jeho úplném začátku napsat příkaz </p>
        <pre>import random</pre>
      </li>
    </ul>
  </%self:exrc>

  <%self:exrc title="Generátor čísel">
    <p>Napište program <code>generator.py</code>, který si od uživatele vyžádá dvě celá čísla - dolní mez a horní mez - a vypíše na výstup náhodné číslo v zadaných mezích. </p>
  </%self:exrc>
</%self:exercises>

<%self:lesson>
  <h2>Výstup na stejný řádek</h2>
  <p>Jistě jste si všimli, že funkce <code>print()</code> při každém výstupu na obrazovku odřádkuje, takže další volání této funkce už bude na nový řádek. Občas ale chceme výstup bez odřádkování, abychom mohli pokračovat stále na tom stejném řádku. </p>
</%self:lesson>
