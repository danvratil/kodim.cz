<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Než se společně vrhneme vstříc dalším tématům z programování v Pythonu, vyplatí se nám trošku si zrekapitulovat co se vlastně probralo na živém kurzu.</p>

  <h2>Hodnoty, operátory a proměnné</h2>
  <p>Základní stavební bloky veškerého programování jsou <em>hodnoty</em>, <em>operátory</em> a <em>proměnné</em>. S hodnotami provádíme výpočty pomocí různých operátorů a výsledky si pak uládáme do proměnných pro pozdější použití.</p>
  
  <h3>Hodnoty</h3>
  <p>V Pythonu jsme jako základní hodnoty viděli <em>celá čísla</em>, <em>desetinná čísla</em>, <em>řetězce</em> a <em>pravdivostní hodnoty</em>. Kategoriím, do kterých se hodnoty řadí jsme říkali <em>datové typy</em>.</p>

  <table>
    <thead>
      <th>Datový typ</th>
      <th>Python název</th>
      <th>Příklad</th>
    </thead>
    <tbody>
      <tr>
        <td>celá čísla</td>
        <td>int</td>
        <td>12, 34, -6, ...</td>
      </tr>
      <tr>
        <td>desetinná čísla</td>
        <td>float</td>
        <td>16.0, 14.5, 0.23, ...</td>
      </tr>
      <tr>
        <td>řetězce</td>
        <td>str</td>
        <td><code>'jaro'</code>, <code>"duben"</code>, <code>"37"</code>,...</td>
      </tr>
      <tr>
        <td>pradivostní hodnoty</td>
        <td>bool</td>
        <td><code>True</code>, <code>False</code></td>
      </tr>
    </tbody>
  </table>
  
  <h3>Operátory</h3>
  <p>Pomocí operátorů s hodnotami různě počítáme a pracujeme. Můžeme je sčítat, odčítat, násobit, dělit, porovnávat apod. Operátorů je více různých druhů. Máme například operátory <em>aritmetické</em>, které slouží k počítání. Pokud tyto operátory použijeme, výsledkem je vždy číslo.</p>

  <table>
    <thead>
      <th>Operátor</th>
      <th>Název</th>
      <th>Příklad</th>
      <th>Výsledek</th>
    </thead>
    <tbody>
      <tr>
        <td><strong><code>+</code></strong></td>
        <td>sčítání</td>
        <td><code>14 + 5</code></td>
        <td><code>19</code></td>
      </tr>
      <tr>
        <td><strong><code>-</code></strong></td>
        <td>odčítání</td>
        <td><code>14 - 5</code></td>
        <td><code>9</code></td>
      </tr>
      <tr>
        <td><strong><code>*</code></strong></td>
        <td>násobení</td>
        <td><code>14 * 5</code></td>
        <td><code>70</code></td>
      </tr>
      <tr>
        <td><strong><code>**</code></strong></td>
        <td>mocnění</td>
        <td><code>14 ** 5</code></td>
        <td><code>537824</code></td>
      </tr>
      <tr>
        <td><strong><code>/</code></strong></td>
        <td>dělení</td>
        <td><code>14 / 5</code></td>
        <td><code>2.8</code></td>
      </tr>
      <tr>
        <td><strong><code>//</code></strong></td>
        <td>celočíselné dělení</td>
        <td><code>14 // 5</code></td>
        <td><code>2</code></td>
      </tr>
      <tr>
        <td><strong><code>%</code></strong></td>
        <td>zbytek po dělení</td>
        <td><code>14 % 5</code></td>
        <td><code>4</code></td>
      </tr>
    </tbody>
  </table>

  <p>Dejme tomu, že chceme spočítat svoji měsíční výplatu, pracujeme-li sedm a půl hodiny denně 21 dní v měsíci za 350kč na hodinu. Můžeme pak v Pythonu psát</p>

<pre>&gt;&gt;&gt; 7.5 * 21 * 350
55105.0</pre>

  <p>Máme ovšem také operátory <em>porovnávací</em>, jejichž výsledkem nejsou čísla ale pravdivostní hodnoty.</p>

  <table>
    <thead>
      <th>Operátor</th>
      <th>Název</th>
      <th>Příklad</th>
      <th>Výsledek</th>
    </thead>
    <tbody>
      <tr>
        <td><strong><code>&gt;</code></strong></td>
        <td>větší než</td>
        <td><code>14 &gt; 5</code></td>
        <td><code>True</code></td>
      </tr>
      <tr>
        <td><strong><code>&gt;=</code></strong></td>
        <td>větší nebo rovno</td>
        <td><code>14 &gt;= 14</code></td>
        <td><code>True</code></td>
      </tr>
      <tr>
        <td><strong><code>&lt;</code></strong></td>
        <td>menší než</td>
        <td><code>14 < 5</code></td>
        <td><code>False</code></td>
      </tr>
      <tr>
        <td><strong><code>&lt;=</code></strong></td>
        <td>menší nebo rovno</td>
        <td><code>14 <= 5</code></td>
        <td><code>False</code></td>
      </tr>
      <tr>
        <td><strong><code>==</code></strong></td>
        <td>rovno</td>
        <td><code>'ahoj' == "ahoj"</code></td>
        <td><code>True</code></td>
      </tr>
      <tr>
        <td><strong><code>!=</code></strong></td>
        <td>nerovno</td>
        <td><code>'13' != 13</code></td>
        <td><code>True</code></td>
      </tr>
    </tbody>
  </table>

  <h3>Proměnné</h3>
  <p>Proměnné složí k tomu, abychom si výsledek výpočtu uložili a mohli jej použít později buď v jiném výpočtu, nebo jej třeba sdělit uživateli našeho programu.</p>

  <p>U proměnných je důležité volit smysluplná jména, aby bylo nám i ostatním jasné, co se uvnitř proměnné nachází. Také je pravidlem pojmenovávat proměnné anglicky</p>

  <p>Spočítejme svou měsíční výplatu, známe-li počet odpracovaných <var>hodin</var> během dne, počet <var>dní</var> v měsíci a svou hodinovou <var>sazbu</var>.</p>

<pre>&gt;&gt;&gt; hours = 7.5
&gt;&gt;&gt; days = 21
&gt;&gt;&gt; pay = 350
&gt;&gt;&gt; salary = hours * days * pay
</pre>

  <p>Můžeme se pak zeptat, zda je naše výplata vyšší než například 50 000 kč.</p>

<pre>&gt;&gt;&gt; salary >= 50000
True</pre>

  <h2>Volání funkcí</h2>
  <p>Funkce za nás odvedou spoustu náročné práce aniž bychom se s takovou prací museli pořád dokola obtěžovat sami. Takovéto užitečné čínnosti jsou například zaokrouhlování, zjišťování délky řetězců, převádění řetězců na čísla a zpět, výstup na obrazovku nebo získávání vstupu od uživatele.</p>

  <table>
    <thead>
      <th>Funkce</th>
      <th>Popis</th>
      <th>Příklad</th>
      <th>Výsledek</th>
    </thead>
    <tbody>
      <tr>
        <td><strong><code>round()</code></strong></td>
        <td>Zaokrouhlování</td>
        <td><code>round(3.141)</code></td>
        <td><code>3</code></td>
      </tr>
      <tr>
        <td><strong><code>len()</code></strong></td>
        <td>délka</td>
        <td><code>len('martin')</code></td>
        <td><code>6</code></td>
      </tr>
      <tr>
        <td><strong><code>int()</code></strong></td>
        <td>převod na celé číslo</td>
        <td><code>int('14')</code></td>
        <td><code>14</code></td>
      </tr>
      <tr>
        <td><strong><code>float()</code></strong></td>
        <td>převod na desetinné číslo</td>
        <td><code>float('14.5')</code></td>
        <td><code>14.5</code></td>
      </tr>
      <tr>
        <td><strong><code>str()</code></strong></td>
        <td>převod na řetězec</td>
        <td><code>str(14)</code></td>
        <td><code>'14'</code></td>
      </tr>
      <tr>
        <td><strong><code>print()</code></strong></td>
        <td>výstup na obrazovku</td>
        <td><code>print('ahoj')</code></td>
        <td>a obrazovce vytištěno <code>ahoj</code></td>
      </tr>
      <tr>
        <td><strong><code>input()</code></strong></td>
        <td>vstup od uživatele</td>
        <td><code>input('Zadejte svůj věk: ')</code></td>
        <td><code>to, co uživatel zadal na terminál, vždy jako řetězec</code></td>
      </tr>
    </tbody>
  </table>


  <h2>Podmínky</h2>
  <p>Pomocí podmínek se programy rozhodují, jakou cestou se během svojí práce vydat. </p>

  <h2>Sekvence</h2>
  <p>Sekvence nám umožnují do jedné proměnné uložit více hodnot najednou. Hodnoty uvnitř sekvencí sídlí na takzvaných <em>indexech</em>, které se vždy počítají od nuly.</p>

  <h2>Cykly</h2>
  <p>Cykly slouží k opekovanému provádění nějakého kousku kódu. </p>

</%self:lesson>