<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Funkce jsou jednou z nejdůležitějších součástí programování. Všimněte si, jak moc vaše programy sestávají z volání různých funkcí. Nyní přichází ten správný čas k tomu, abychom začali vytvářet funkce vlastní.</p>
  
  <p>Před tím je dobré si osvěžit několik základních pojmů. Pokud chceme funkci použít, říkáme, že ji takzvaně <em>voláme</em>. Například takto v JavaScriptu voláme funkci, která umocní první zadané číslo na druhé zadané číslo.</p>

  <pre>Math.pow(2, 3)</pre>

  <p>Této funkci jsme do kulatých závorek předali dva <em>vstupy</em>. Vstupům funkce se říká <em>parametry</em>. Funkci <code>Math.pow</code> jsme tedy předali dva parametry. Jakmile funkci zavoláme, ona provede nějaký výpočet a takzvaně <em>vrátí</em> výsledek. Výsledku říkáme <em>výstup</em>. Řekneme tedy, že volání funkce <code>Math.pow</code> s parametry 2 a 3 vrátí výstup 8. </p>
  
  <h2>Jak upéct vlastní funkci</h2>

  <p>Ve všech programovacích jazycích je již od začátku k dispozici mnoho funkcí. Často ale potřebujeme funkci, která dělá něco specifického, důležitého pouze pro náš program. Představme si například, že vyměřujeme pozemek a chceme spočítat plochu pozemku, který má tvar pravoúhlého trojúhelníka o šířce <code>witdth</code> a výšce <code>height</code>. </p>

  <div class="text-center">
    <img src="/img/intro-to-js/triangle-area.png" alt="Pozemek" class="figure__img-600" />
  </div>
  
  <p>Naše funkce tedy bude mít dva vstupy - šířku a výšku. Ze školy si pamatujeme, že plochu spočítáme tak, že vynásobíme šířku výškou a vydělíme dvěma. Už tedy víme, co má funkce dělat a zbývá nám tento postup zapsat v JavaScritpu.</p>

  <pre>(width, height) => width * height / 2</pre>

  <p>Zápis funkce se dělí na definici vstupů (před šipkou) a tělo (za šipkou). Jako vstupy v kulatých závorkách vidíme dvě slova <code>width</code> a <code>height</code>. To jsou speciální proměnné, kterým říkáme <em>argumenty</em>. Pokud naší funkci zavoláme s nějakými parametry, například 6 a 3, JavaScript tyto hodnoty uloží do agrumentů. V těle funkce pak můžeme agrumenty použít jako normální proměnné pro náš výpočet. </p>

  <div class="text-center">
    <img src="/img/intro-to-js/js-function.png" alt="Funkce" class="figure__img-600" />
  </div>

  <p>Nyní se tedy ukážeme, jak naší funkci zavolat. Důležité je si uvědomit, že funkce je hodnota jako každá jiná. Můžeme ji tedy uložit do proměnné podobně jako to děláme s čísly, řetězci apod. </p>

<pre>const wage = 250;
const user = 'martin';
const area = (width, height) => width * height / 2;</pre>

  <p>Jakmile máme funkci uloženou v proměnné, můžeme jí zavolat známým způsobem.</p>

  <pre>area(6, 3);</pre>

  <h2>Složitější funkce</h2>
  <p>Ne každá funkce je tak přímočará, jako výpočet obsahu. Často se stane, že potřebujeme ve funkci provést nějaké rozhodování, cyklus apod. Mějme například funkci, která nám vrátí absolutní hodnotu čísla. V takové funkci potřebujeme použít podmínky. Tělo funkce tedy bude obsahuje více příkazů a nevejde se nám na jeden řádek. V takovém případě může tělo funkce být blok kódu podobně jako u podmínek.</p>

<pre>const abs = (x) => {
  if (x >= 0) {
    return x;
  } else {
    return -x;
  }
};</pre>

  <p>Všimněte si klíčového slova <code>return</code>, které ukončí běh funkce a vrátí zadaný výsledek.</p>

  <p>Všimněte si, že tělo funkce může obsahovat mnoho příkazů. Je to jakýsi malý program. Proto se funkcím někdy historicky říká <em>podprogramy</em>-</p>

</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>
  
  <%self:exrc title="Hrátky s časem">
    <ol>
      <li>Napište funkci s názvem <code>hodiny</code>, která bude mít jeden argument jménem <var>dny</var>, který bude představovat počet dní. Funkce spočítá kolik celkem hodin je obsaženo v zadaném počtu dní.</li>
      <li>Upravte předchozí funkci tak, aby vracela počet vteřin obsažných v zadaném počtu dní.</li>
      <li>Upravte předchozí funkci tak, že dostane letopočet (2018, 1997 apod.) a vrátí kolik milisekund (tisícin sekundy) uplynulo od začátku roku 1900 do začátku zadaného roku.</li>
      <li>Upravte předchozí funkci tak, že obdrží tři argumenty: <code>rok</code>, <code>mesic</code> a <code>den</code>. Funkce spočítá kolik milisekund uplynulo od 1. ledna 1900 do začátku zadaného dne. Pro jednoduchost předpokládejme, že jeden měsíc má 30 dní a jeden rok má přesně 12 měsíců, tedy 360 dní.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Obsah elipsy">
    <p>Tentokrát chceme spočítat plochu pozemku ve tvaru elipsy jako na obrázku. </p>

    <div class="text-center">
      <img src="/img/intro-to-js/elipse.png" alt="Elipsa" class="figure__img-600" />
    </div>

    <p>Z matematiky víme, že známe li šířku a výšku elipsy, její obsah je polovina šířky krát polovina výšky krát číslo pí. Napište funkci <code>elipseArea</code>, která spočítá plochu pozemku dle zadané šířky a výšky. Číslo pí najdete v JavaScriptu v proměnné <code>Math.PI</code>.</p>
  </%self:exrc>

  <%self:exrc title="Vzdálenosti">
    <ol>
      <li>Napište funkci jménem <code>abs</code>, která spočítá vzdálenost zadaného čísla od nuly, tedy takzvanou aboslutní hodnotu.</li>
      <li>Napište funkci <code>dist1d</code>, která spočítá vzdálenost mezi dvěma zadanými čísly <code>a</code>, <code>b</code>.</li>
      <li>
        <p>Mějme dva body v rovině o souřadnících [x1, y1] a [x2, y2]. Napište funkci <code>dist2d</code>, která bude mít 4 argumenty: <code>x1</code>, <code>y1</code>, <code>x2</code>, <code>y2</code> a  spočítá vzdálenost mezi těmito dvěma body v rovině podle vzorečku</p>

        <div class="text-center">
          <img src="/img/rebeljs/dist2d.png" alt="Vzdálenost 2D" class="figure__img-400" />
        </div>
      </li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Funkce měnící HTML">
    <ol>
      <li>Napište funkci, která obdrží jako argument HTML element. </li>
      <li>Napište funkci <code>dist1d</code>, která spočítá vzdálenost mezi dvěma zadanými čísly <code>a</code>, <code>b</code>.</li>
      <li>
        <p>Mějme dva body v rovině o souřadnících [x1, y1] a [x2, y2]. Napište funkci <code>dist2d</code>, která bude mít 4 argumenty: <code>x1</code>, <code>y1</code>, <code>x2</code>, <code>y2</code> a  spočítá vzdálenost mezi těmito dvěma body v rovině podle vzorečku</p>

        <div class="text-center">
          <img src="/img/rebeljs/dist2d.png" alt="Vzdálenost 2D" class="figure__img-400" />
        </div>
      </li>
    </ol>
  </%self:exrc>

  
</%self:exercises>