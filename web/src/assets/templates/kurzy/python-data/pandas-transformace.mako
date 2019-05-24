<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Ještě než se pustíme do poslední lekce Pandasu, čeká nás představení jednoho velmi důležitého konceptu z jazyka Python, který posune naše programování zcela na novou úroveň. Naučíme se totiž psát vlastní funkce.</p>

  <h2>Vlastní funkce</h2>
  <p>Během našeho výletu Pythonem jste již potkali mnoho funkcí. Pomocí funkce <code>round</code> jsme zaokrouhlovali, pomocí funkce <code>random</code> jsme generovali náhodná čísla, pomocí funkce <code>open</code> jsme otvírali soubory a tak dále, a tak dále. Každá funkce je vlastně takový malý prográmek, který řeší nějakou často opakovanou činnost. Jakmile začneme psát delší programy, často narazíme na potřebu vyrobit si vlastní funkci, abychom měli zkratku pro nějakou vlastní činnost, kterou v našem programu často opakujeme.</p>

  <p>Můžeme si například představit program, který se zabývá výměrou pozemků a často se nám stává, že chceme spočítat plochu pozemku tvaru trojúhelníka jako na tomto obrázku.</p>

  <div class="text-center">
    <img src="/img/intro-to-js/triangle-area.png" alt="Pozemek" class="figure__img-600" />
  </div>

  <p>Na vzoreček pro výpočet plochy trojúhelníka si vzpomeneme ze základní školy. </p>

  <pre>area = width * height / 2</pre>

  <p>Pokud ale tento výpočet chceme v našem programu často opakovat, nemá smysl ho pořád dokola kopírovat. Lepší je si napsat funkci, která dostane šířku a výšku trojúhelníka jako vstup a vrátí nám spočítanou plochu. Takovou funkci bychom mohli pojmenovat například <code>triangleArea</code> a v Pythonu bychom ji vytvořili takto.</p>

<pre>def triangleArea(w, h):
  return w * h / 2</pre>

  <p>Takovou funkci pak můžeme zavolat jako každou jinou se zcela konkrétními vstupními hodnotami, které pro náš příkladový pozemek činí 6 a 3.</p>

<pre>&gt;&gt;&gt; area = triangleArea(6, 3)
&gt;&gt;&gt; area
9.0</pre>

  <p>Pojďme si blíže vysvětlit, jak jsme funkci vlastně vyrobili. Funkce se v Pythonu vytváří použitím kličového slova <code>def</code>. Za ním následuje název funkce, který si můžeme zvolit dle libosti. Za názvem funkce v závorkách uvedeme takzvané <em>vstupní parametry</em>. Parametry jsou speciální proměnné, do kterých nám sám Python uloží vstupy funkce ve chvíli, kdy ji zavoláme. Za dvojtečkou následuje blok kódu, který říká, co daná funkce dělá. Chceme-li z funkce vrátit výsledek, musíme použít klíčové slovo <code>return</code>.</p>
  
  <p>V našem případě má funkce dva vstupní parametry jménem <var>w</var> a <var>h</var>. Ve chvíli, kdy jsme funkci zavolali, do těchto parametrů Python uložil hodnoty 6 a 3. Poté se provedl kód funkce, který spočítal výsledek, a ten se nám po navrácení z funkce uložil do proměnné <code>area</code>.</p>

  <h3>Složitější funkce</h3>
  <p>Naše funkce pro výpočet obsahu byla velmi jednoduchá. Kód funkce může být samozřejmě mnohem obsáhlejší. Napišme například funkci, která jako vstup obdrží seznam a vrátí součet všech kladných čísel z tohoto seznamu.</p> 

<pre>def sumPositive(nums):
  result = 0
  for n in nums:
    if n > 0:
      result += n
  return result</pre>

<%self:exercises>
  <h2>Cvičení</h2>
  <%self:exrc title="Obsah elipsy">
    <p>Tentokrát chceme spočítat plochu pozemku ve tvaru elipsy jako na obrázku. </p>

    <div class="text-center">
      <img src="/img/intro-to-js/elipse.png" alt="Elipsa" class="figure__img-600" />
    </div>

    <p>Z matematiky víme, že známe li šířku a výšku elipsy, její obsah je polovina šířky krát polovina výšky krát číslo pí. Napište funkci <code>elipseArea</code>, která spočítá plochu pozemku dle zadané šířky a výšky. Číslo pí najdete v modulu <code>math</code> jako <code>math.pi</code>.</p>
  </%self:exrc>

  <%self:exrc title="Větší ze dvou čísel">
    <p>Napište funkci jménem <code>max2</code>, který vrátí větší ze dvou zadaných čísel.</p>
  </%self:exrc>

  <%self:exrc title="Geometrický průměr">
    <p>Napište funkci jménem <code>max2</code>, který vrátí větší ze dvou zadaných čísel.</p>
  </%self:exrc>

  <h2>Bonusy</h2>  

  <%self:exrc title="Větší ze tří čísel">
    <p>Napište funkci jménem <code>max3</code>, který vrátí největší ze tří zadaných čísel.</p>
  </%self:exrc>


</%self:lesson>