<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Následující příklad v sobě zahrnuje většinu věcí, kterou jsme se do teď v kurzu naučili. Můžete jej vyzkoušet a zjistit, jak na tom jste se svými programátorskými schopnostmi a co jste si z kurzu zapamatovali.</p>

</%self:lesson>

<%self:exercises>
  <%self:exrc title="Prváci">
    <p>Na Fakultu hybridních přírodních umění nastupují nově přijatí studenti. Tabulku těchto studentů s jejich rodnými čísly najdete v souboru <a href="/download/python-data/studenti.txt" download>studenti.txt</a>. Tabulka je evidentně vykopírovaná z Excelu, neboť hodnoty jsou zde odděleny tabulátory. Na každém řádku je jméno a příjmení studenta a jeho rodné číslo. Vytvořte Python program a proveďte v něm následující úkony. </p>

    <ol>
      <li>Načtěte data ze souboru do vašeho programu jako tabulku v podobě seznamu seznamů. Každý vnořený seznam bude představovat jeden řádek tabulky.</li>

      <li>Přidejte do tabulky sloupec, který bude udávat věk studenta. Věk studenta zjistíte podle roku narození, což jsou první dvě cifry rodného čísla. </li>
      
      <li>Přidejte do tabulky sloupec, který bude udávat zda je student muž či žena. Pohlaví poznáte podle měsíce narození (druhé dvě cifry rodného čísla). Pokud je člověk ženského pohlaví, přičítá se k první cifře měsíce narození číslo 5.</li>

      <li>
        <p>Přidejte do tabulky sloupec, který bude udávat univerzitní email studenta. Univerzitní mail vznikne tak, že se vezme prvních pět písmenek příjmení a první tři písmenka křestního jména. Za takto vzniklý řetězec se připojí doména <code>@hybrid.edu</code>.</p>
        
        <p><strong>Příklad:</strong> Student se jménem Květoslav Štístko bude mít email <code>stistkve@hybrid.edu</code>. Všimněte si, že pro tuto konstrukci potřebujeme jméno zbavit diakritiky. To lze v Pythonu provést pomocí modulu <code>unidecode</code>. Tento modul není ve výchozí instalaci Pythonu k dispozici, musíme si jej proto doinstalovat: </p>

        <pre>pip install unidecode</pre>

        <p>Pozor, že na Macu je potřeba použít <code>pip3</code>. Tento modul obsahuje funkci <code>unidecode</code> (náhodou se jmenuje stejně jako modul samotný). Pokud tuto funkci zavoláte s řetězcem s diakritikou, vrátím vám řetězec bez diakritiky. Využijte tuto funkci ke splnění tohoto úkolu.</p>
      </li>

      <li>Uložte výslednou tabulku ve formátu JSON do souboru s názvem <code>studenti.json</code>. K tomu bude potřeba seznam seznamů převést na seznam slovníků. Každý řádek tabulky tedy bude reprezentován slovníkem, kde klíče jsou názvy sloupečků.</li>

    </ol>
  </%self:exrc>
</%self:exercises>
