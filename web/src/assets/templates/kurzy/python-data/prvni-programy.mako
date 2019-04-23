<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Konzole jazyka Python už nám pomalu přestává stačit na větší a komplikovanější problémy. Potřebovali bychom místo jednoho příkazu spustit příkazů více po sobě a také být schopni si takovou sekvenci příkazů uložit, abychom ji mohli spouštět vícekrát pro různá data. Začneme tedy psát první <em>programy</em>.</p>

  <h2>Programy</h2>
  <p>Mějme následující zadání. Spočítejte průměrnou denní teplotu naměřenou za daný týden podle následující tabulky a najděte den, ve který byla teplota nejblíže průměru.</p>

<pre>mereni = [
  ['po', 17.3],
  ['út', 16.8],
  ['st', 15.1],
  ['čt', 13.2],
  ['pá', 14.0],
  ['so', 13.9],
  ['ne', 15.8]
]</pre>

  <p>Abychom se dostali k výsledku, budeme s touto tabulkou potřebovat provést několik operací a místo toho, abychom je zadávali do Python konzole jednu po druhé, napíšeme si příkazy jednoduše za sebe do obyčejného textového souboru s příponou <code>.py</code>. Pojmenujme jej například <code>teplota.py</code>.</p>

<pre>mereni = [
  ['po', 17.3],
  ['út', 16.8],
  ['st', 15.1],
  ['čt', 13.2],
  ['pá', 14.0],
  ['so', 13.9],
  ['ne', 15.8]
]
teploty = [radek[1] for radek in mereni]
prumer = sum(teploty)/len(teploty)
rozdily = [abs(t - prumer) for t in teploty]
min_rozdil = min(rozdily)
index = rozdily.index(min_rozdil)</pre>

  <p>Pokud chceme takovýto program spustit, musíme nejdříve náš terminál nasměrovat na složku, ve které máme uložen náš soubor <code>teploty.py</code>. Poté napíšeme do terminálu, <strong>pozor, nikoliv do Python konzole</strong>, následující příkaz.</p>

<pre>$ python3 teploty.py</pre>

  <p>Pozor, že na systému Windows příkaz vypadá takto:</p>

  <div class="verbatim">
    <pre>$ python teploty.py</pre>
  </div>
  
  <p>Náš program se sice spustí, ale nevypíše žádný výsledek. To je proto, že když spouštíme programy, Python žádné vysledky sám od sebe nevypisuje. Musíme to provést sami pomocí funkce <code>print()</code>. Na konec našeho programu tedy přidáme řádek</p>

  <pre>print(index)</pre>
  
  <p>Pokud náš program spustíme znovu, vypíše nám index, na kterém se nachází den s teplotou nejblíže k průměru.</p>

  <p>Možná bychom ale chtěli, aby program místo indexu vypsal spíše název dne v týdnu. To zařídíme tak, že poslední řádek změníme na </p>

  <pre>print(mereni[index][0])</pre>

  <p>Ještě hezčí bude, pokud uživateli sdělíme výsledek nějak přívětivě, například takto:</p>

<pre>print(
  'Den s teplotou nejblíž průměru je ' +
  str(mereni[index][0])
)</pre>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>
  <%self:exrc title="Jméno a město">
    <p>Napište program, který na obrazovku vypíše vaše jméno a na nový řádek město, ze kterého pocházíte.</p>
  </%self:exrc>

  <%self:exrc title="Výplata jako program">
    <p>Na první lekci jsme dělali <a href="../hodnoty-promenne-funkce#vyplata">cvičení na výpočet výplaty</a> pomocí proměnných. Udělejte toto cvičení znova, ale tentokrát jako program. Nejdříve uložte nezbytné hodnoty do proměnných, spočítejte výplatu a pak ji pomocí funkce <code>print()</code> vypište na obrazovku.</p>
  </%self:exrc>

  <%self:exrc title="Teploty jako program">
    <p>Minulý týden jsme dělali <a href="../text-chroustani#seznam-teplot">cvičení na zpracování teplot</a>. Udělejte toto cvičení znovu, tentokrát jako program, který všechny požadované informace vypíše hezky přehledně na obrazovku.</p>
  </%self:exrc>

  ${self.alert_done()}
</%self:exercises>

<%self:lesson>
  <h2>Moduly</h2>
  <p>Doposud jsme v našich programech měli k dispozici pouze několik základních funkcí. Zatím jsme viděli tyto</p>
  
  <p><code>abs()</code>, <code>round()</code>, <code>len()</code>, <code>sum()</code>, <code>min()</code>, <code>max()</code>, <code>sorted()</code>, <code>int()</code>, <code>float()</code>, <code>str()</code>, <code>print()</code>.</p>

  <p>Později si ukážeme, že jich ještě několik přibude, ale o moc víc jich už k dispozici není. S takto omezeným množstvím funkcí bychom si dlouho nevystačili. Python naštěstí nabízí mnoho takzvaných <em>modulů</em>, které obsahují spousty dalších užitečných funkcí.</p>

  <p>Moduly jsou v podstatě balíčky funkcí zaměřených na nějaké konkrétní téma, například statistika, zpracování textu, práce se soubory na disku apod. Pokud chceme používat funkce z nějakého modulu, musíme jej nejdřív takzvaně <em>importovat</em>.</p>

  <p>Prvním velmi užitečným balíčkem funkcí je modul <code>math</code>. Importujeme jej příkazem</p>

  <div class="verbatim">
    <pre>import math</pre>
  </div>

  <p>který napíšeme na začátek našeho programu. Pokud pracujeme v Python konzoli, napíšeme tento příkaz prostě na konzoli a dokud ji nezavřeme, můžeme modul používat.</p>

  <p>Kromě mnoha jiných obsahuje modul <code>math</code> funkce <code>ceil()</code> a <code>floor()</code>, které zaokrouhlují buď vždy jen dolů nebo jen nahoru. Abychom je mohli zavolat, musíme použít tečkovou notaci.</p>
  
  <div class="verbatim">
<pre>&gt;&gt;&gt; math.ceil(3.1)
4
&gt;&gt;&gt; math.floor(3.7)
3</pre>
  </div>

  <p>Mnozí z vás už si stěžovali, že Python neobsahuje funkci, která počítá průměr. Nyní takovou funkci můžeme získat, pokud importujeme modul <code>statistics</code>. Tento modul obsahuje mimo jiné funkci <code>mean()</code>, která počítá vytoužený průměr.</p>

  <div class="verbatim">
<pre>&gt;&gt;&gt; import statistics
&gt;&gt;&gt; statistics.mean([1, 2, 3, 4, 5, 6])
3.5</pre>
  </div>

  <p>Poslední avšak velmi důležitý modul, jenž si v tuto chvíli představíme, je modul <code>sys</code>. Ten obsahuje funkce, které umožňují Pythonu komunikovat s operačním systémem, ve kterém je spuštěný. Nás z tohoto modulu bude zajímat především proměnná (ano, moduly mohou obsahovat kromě funkcí také proměnné) s názvem <code>argv</code> Ta nám umožní přistupovat k tazvaným <em>parametrům příkazové řádky</em>.</p>

  <h2>Parametry příkazové řádky</h1>
  <p>Všechny programy, které jsme zatím společně vytvořili, obsahovaly všechna nezbytná data jaksi natvrdo přímo uvnitř kódu programu. Možná vás napadne, že například program, který má naměřené teploty z minulého týdne zadrátované přímo uvnitř kódu, nám je jen pramálo k užitku. Nemůžeme mu předat nově naměřené teploty jinak, než upravit jeho zdrojový kód. Do skutečně užitečného programu musíme být schopni dostat data jaksi z venku. K tomu máme vícero možností ‒ například nahrát data ze souboru na disku, což se naučíme v příští lekci, můžeme je stáhnout z internetu (také se časem naučíme), ale také je můžeme programu předat přímo na příkazové řádce, když jej spouštíme.</p>
  
  <p>Představme si například program, kterému bychom chtěli předat počet minut a on by nám vypsal v hezkém formátu kolik to dohromady dělá hodin a zbylých minut. Pojmenujme náš program například <code>cas.py</code>. Pokud chceme zjistit, jaký čas představuje 325 minut, zavoláme náš program takto: </p>
  
  <pre>$ python3 cas.py 325</pre>

  <p>Číslo 325 v tomto příkazu je právě to, čemu říkáme <em>parametr</em>. Teď už jen zbývá se k tomuto číslu nějak dostat zevnitř našeho programu.</p>

<pre>import sys
celkem = int(sys.argv[1])
hodin = celkem // 60
minut = celkem % 60
print(str(hodin) + ':' + str(minut))</pre>

  <p>To nejdůležitější se děje na druhém řádku, kde používáme hodnotu <code>sys.argv[1]</code>. Proměnná <code>sys.argv</code> totiž obsahuje seznam všech parametrů, které náš program dostal na příkazovém řádku. Zajímavé je, že tento seznam jako první položku obsahuje samotný název programu. Tedy, pokud bychom si nechali proměnnou <code>sys.argv</code> vytisknout na obrazovku, byl by její obsah po spuštění našeho programu</p>

  <pre>['cas.py', '325']</pre>

  <p>Tedy na prvním místě je název programu a na druhém je náš parametr, který jsme prve zadali na příkazové řádce. Všimněte si ovšem, že náš parametr je řetězec. Python totiž všechny parametry na příkazové řádce bere jako řetězce, nehledě na to, jestli jsou to čísla nebo cokoliv jiného. My chceme ale v našem programu čas jako číslo, neboť s ním chceme provádět různá matematická cvičení. Proto musíme náš parametr převést na číslo pomocí již známé funkce <code>int()</code>, což právě provádíme na druhém řádku našeho programu.</p>

  <h3>Nač se držet při zemi</h3>
  <p>Zatím jsme na příkazové řádce předali pouze jeden parametr. Nebuďme ale troškaři. Na příkazové řádce si můžeme dovolit předávat zajímavější věci, například celý seznam hodnot. Můžeme kupříkladu napsat program, který spočítá součet všech zadaných hodnot. Pozor ovšem na to, že hodnoty na příkazové řádce jsou vždy řetězce, takže pokud je to potřeba, musíme si je sami převést na čísla.</p>

<pre>import sys
cisla = [int(c) for c in sys.argv[1:]]
print('Součet zadaných čísel: ' + str(sum(cisla)))
</pre>

  <p>Program poté můžeme volat třeba takto:</p>

<pre>$ python3 soucet.py 57 41 37 22 12
Součet zadaných čísel: 169</pre>

  <p>Všimněte si, že na druhém řádku našeho programu používáme <code>sys.argv[1:]</code>. Je to proto, abychom se zbavili názvu programu, který vždy zabírá první prvek seznamu parametrů. Naše čísla se tedy nacházejí až od prvního indexu nahoru.</p>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>

  <%self:exrc title="Čas v minutách">
    <p>Napište program <code>minuty.py</code>, která dělá obrácenou věc než program <code>cas.py</code> z textu výše. Když mu na příkazové řádce předáme dva parametry ‒ počet hodin a počet minut ‒ například takto </p>
    <pre>$ python3 minuty.py 2 54</pre>
    <p>program nám vrátí délku tohoto času minutách. V tomto případě tedy číslo 174.</p>
    <ol>
      <li>Nejprve program napište tak, že si hodnoty 2 a 54 uložíte přímo natvrdo v programu do nějakých proměnných a z nich spočítáte a vytisknete výsledek. </li>
      <li>Až když váš program bude fungovat, zkuste tyto proměnné načíst z parametrů příkazové řádky. Nezapomeňte, že parametry jsou vždy řetězce a že první parametr je vždy název vašeho programu. </li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Zaokrouhlování">
    <p>Napište program, který dostane na vstupu desetinné číslo a na výstup napíše toto číslo zakrouhlené nejdříve nahoru, potom dolů a potom běžným Pythonovským zaokrouhlováním.</p>
  </%self:exrc>
  
  <%self:exrc title="Doména na URL">
    <p>Napište program <code>url.py</code>, který jako parametr dostane název domény, například <code>kodim.cz</code> a na výstup vypíše URL, kterou je třeba zadat do prohlížeče pro přístup k webové stránce na této doméně, tedy <code>http://kodim.cz</code>.</p>
  </%self:exrc>

  <%self:exrc title="Průměr versus medián">
    <p>Často se hovoří o tom, že průměr není pro některé veličiny (například platy) vypovídající hodnota a lepší je dívat se na medián. Napište program, který s použitím funkcí <code>statistics.mean()</code> a <code>statistics.median()</code> vypíše na výstup průměr a medián zadaných hodnot. Hodnoty program obdrží na příkazovém řádku. Příklad použití:</p>

<pre>$ python3 prumer-median.py 2 1 8 3 4 11 7 1512
Průměr: 193.5
Medián: 5.5</pre>
  </%self:exrc>

  ${self.alert_done()}

  <h2>Bonusy</h2>
  <%self:exrc title="Klasické zaokrouhlování">
    <p>Překvapivě Python neobsahuje žádnou funkci, která by dělala klasické zaokrouhlování, tedy takové, na které jsme všichni zvyklí ze školy. S něčím takovým se nemůžeme spokojit.</p>

    <p>Napište program, který dostane na vstupu číslo a zaokrouhlí jej klasickým zaokrouhlováním. Zkuste vymyslet jak to udělat co nejúsporněji s použitím zaokrouhlovacích funkcí, které už znáte.</p>
  </%self:exrc>
</%self:exercises>

<%self:lesson>
  <h2>Čtení na doma</h2>

  <p>Opět je zde pro vás malá samovzdělávací lekce. Nejdříve se podíváme na to, jak můžeme do chroustání seznamů zapojit podmínky, ukážeme si, jak se generují náhodná čísla a potom si představíme další zajímavou hodnotu.</p>

  <h3>Podmínky</h3>
  <p>Podmínky slouží k tomu, abychom nějaký kus kódu mohli vykonat jen v případě, že je splněna nějaká podmínka. Nejjednodušší použití podmínek najdeme při zpracování seznamů. Mějme například seznam uběhnutých kilometrů a chceme z něj jen nenulové hodnoty.</p>

<pre>&gt;&gt;&gt; ubehnuto = [12, 0, 4, 5, 0, 6]
&gt;&gt;&gt; [beh for beh in ubehnuto if beh != 0]
[12, 4, 5, 6]</pre>

  <p>Nebo bychom mohli z následujícího seznamu měst chtít pouze názvy těch měst, která mají nad 50 000 obyvatel.</p>

<pre>&gt;&gt;&gt; mesta = [['Zlín', 76010], ['Jičín', 16792], ['Aš', 13093]]
&gt;&gt;&gt; [mesto[0] for mesto in mesta if mesto[1] > 50000]
['Zlín']</pre>

  <h3>Náhodná čísla</h3>
  <p>Jeden z velmi zajímavých a užitečných modulů v Pythonu, který jsme na hodině nezmínili, je modul zvaný <code>random</code>. Slouží ke generování náhodných čísel a jiných náhodných věcí. Podíváme se na funkce <code>randint()</code> a <code>uniform().</code></p>
  
  <p>Funkce <code>randint(a, b)</code> generuje náhodná celá čísla ze zadaného intervalu. Můžeme tak simulovat například hody šestistěnnou hrací kostkou:</p>

<pre>&gt;&gt;&gt; import random
&gt;&gt;&gt; random.randint(1, 6)
4
&gt;&gt;&gt; random.randint(1, 6)
6
&gt;&gt;&gt; random.randint(1, 6)
1</pre>
  
  <p>Funkce <code>uniform(a, b)</code> funguje podobně jako <code>randint()</code>, generuje však náhodná <em>desetinná</em> čísla ze zadaného intervalu.</p>
  
<pre>&gt;&gt;&gt; random.uniform(1, 6)
3.0445222265782617
&gt;&gt;&gt; random.randint(1, 6)
3.655355475003799
&gt;&gt;&gt; random.randint(1, 6)
4.435795489936791</pre>

  <p>Tyto funkce se nám mohou hodit pro generování náhodných dat nebo pro psaní různých her a hříček.</p>

  <h3>Rozsahy</h3>
  <p>Za posledních pár lekcí už jsme se naučili používat pěknou řádku typů hodnot:</p>

  <ul>
    <li>celá čísla,</li>
    <li>desetinná čísla,</li>
    <li>řetězce,</li>
    <li>pravdivostní hodnoty,</li>
    <li>seznamy.</li>
  </ul>

  <p>Nyní nám přibude jedna navíc, která se jmenuje <em>rozsah</em>. Rozsahy slouží k tomu, abychom v Pythonu uměli říct, že chceme všechna čísla z nějakého rozmezí hodnot. Pokud bychom například chtěli všechna čísla mezi 1 a 10, mohli bychom vyrobit seznam</p>

  <pre>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]</pre>

  <p>To vypadá přímočaře a jednoduše. Ovšem to pouze do chvíle, kdy po vás budu chtít seznam od 1 do 10 000. Pokud byste chtěli takový seznam vyrobit, upíšete se k smrti. Navíc si Python bude muset všechna tato čísla v takovém seznamu pamatovat a to je trochu zbytečné. Když víme, že v seznamu jsou opravdu všechna čísla v zadaném rozmezí, stačí si pamatovat jen krajní hodnoty, tedy 1 a 10 000. A přesně k tomu slouží hodnota typu <em>rozsah</em>, anglicky <em>range</em>. </p>

  <p>Chceme-li všechna čísla od 1 do 10, napíšeme prostě</p>

  <pre>range(1, 11)</pre>

  <p>Pozor na to, že funkce <code>range()</code> chápe druhý parametr jako <strong>vyjma</strong>, nikoliv včetně.</p>

  <p>Pojďme vyzkoušet, co se stane, když takovýto výraz napíšeme do Python konzole</p>

<pre>&gt;&gt;&gt; range(1, 11)
range(1, 11)
</pre>

  <p>Python nám prostě odpověděl totéž, co jsme napsali, úplně stejně jako kdybychom napsali prostě číslo 50 nebo řetězec <code>'ahoj'</code>. Rozsah je prostě hodnota, ve které si Python pamatuje dolní a horní mez a to je všechno. Výhodou rozsahů však je, že je můžeme používat všude tam, kde bychom normálně použili seznam. Pokud nás například zajímá součet hodnot od 1 do 20, můžeme prostě napsat</p>

<pre>&gt;&gt;&gt; sum(range(1, 21))
210
</pre>

  <p>Všimněte si, že jsme takto spočítali součet aniž bychom museli vypisovat všechny hodnoty mezi 1 a 20. Náš nejsilnější kanón je teď samozřejmě chroustání seznamů a ano, i tam můžeme s výhodou použít rozsahy. Pokud bychom například chtěli všechny násobky trojky mezi 1 a 100, stačí napsat</p>

  <pre>&gt;&gt;&gt; [x for x in range(1, 101) if x % 3 == 0]</pre>

  <p>Pokud bychom mermomocí chtěli opravdu všechny hodnoty z rozsahu jako seznam, můžeme jej převést na seznam pomocí funkce <code>list()</code></p>

<pre>&gt;&gt;&gt; list(range(1, 10))
[1, 2, 3, 4, 5, 6, 7, 8, 9]</pre>
</%self:lesson>

<%self:exercises>
  <h2>Domácí úložky ‒ povinné</h2>
  
  <%self:exrc title="Minuty">
    <p>Vytvořte program <code>casy.py</code>, který bude zpracovávat seznam naměřených časů v minutách. Nejprve přímo do programu zadrátujte konkrétní hodnoty například takto: </p>

    <pre>casy = [12, 25, 64, 27, 15, 66, 128, 44]</pre>

    <ol>
      <li>Vyfiltrujte z tohoto seznamu pouze ty časy, které se vejdou do jedné hodiny.</li>
      <li>Vyfiltrujte z tohoto seznamu pouze ty časy, které překračují jednu hodinu a to tak, že výsledkem bude seznam minut, udávajících o kolik jsme jednu hodinu překročili.</li>
      <li>Upravte program tak, aby seznam naměřených hodnot obdržel na příkazové řádce.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Fahrnheit vs. Celsius" type="home" diffi="1">
    <p>Pokud pečete podle anglických receptů, často se po váš požaduje rozehřát troubu na uvedenou teplotu. Pokud si ovšem neuvědomíte, že Američané používají pro měření teploty stupně Fahrenheita namísto Celsia, bude vás na konci pečení čekat nemilé překvapení. </p>

    <p>Nastudujte si na <a href="https://cs.wikipedia.org/wiki/Stupe%C5%88_Fahrenheita">České Wikipedii</a>  jak se převádějí stupně Fahrenheita na stupně Celsia a napište program, který takový převod provede. Váš program dostane na příkazové řádce teplotu ve stupních Fahrenheita a vypíše její ekvivalent ve stupních Celsia.</p>
  </%self:exrc>

  <%self:exrc title="Cesta k souboru" type="home" diffi="1">
    <p>Ve Windows se cesty k souborům zapisují pomocí zpětných lomítek, tedy například takto</p>
    
    <pre>cesta\do\rise\smazenych\krevet</pre>

    <p>Na Unixu (Macu nebo Linux) se naopak cesty píší pomocí dopředných lomítek, tedy takto</p>

    <pre>cesta/do/rise/smazenych/krevet</pre>

    <p>Napište program, který dostane jako parametr cestu ve Windows stylu a převede ji na Unix styl.</p>
  </%self:exrc>

  <%self:exrc title="Házení kostkou" type="home" diffi="2">
    <ol>
      <li>Napište program, který při každém spustění hodí šestistěnnou kostkou ‒ tedy vypíše náhodné číslo mezi 1 až 6.</li>
      <li>Upravte program tak, aby jako parametr dostal počet stěn kostky. Bude tedy umět házet třeba sedmistěnnou nebo devítistěnnou kostkou podle toho, jaké číslo dostane na vstupu.</li>
      <li>Předejte programu další parametr, který bude udávat kolik hodů má program provést. Program pak na výstup vytiskne seznam tolika hodů, kolik jste zadali na vstupu. Cílem je tedy vymyslet, jak vyrobit seznam náhodných čísel. Jistě se nám k tomu bude hodit chroustání seznamů.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Karty 1" type="home" diffi="2">
    <p>Napište program, který vylosuje náhodnou hrací kartu z klasické whistové sady obsahující 52 karet, rozdělených do čtyř barev (kříže, srdce, piky, káry), s hodnotami 2, 3, 4, 5, 6, 7, 8, 9, 10, J (kluk), Q (dáma), K (král), A (eso).</p>

    <p>Výstup programu může vypadat například takto:</p>

    <pre>Karta: kluk kříže</pre>
  </%self:exrc>

  <h2>Domácí úložky ‒ nepovinné</h2>
  
  <%self:exrc title="Jak proměnit hada na velblouda" type="home" diffi="1">
    <p>Napište program, který dostane na příkazovém řádku název proměnné v hadí notaci a vrátí tentýž název zapsaný ve velbloudí notaci. </p>

    <p>Příklad:</p>
<pre>$ python3 had-velbloud.py had_honi_velblouda
hadHoniVelblouda
</pre>
  </%self:exrc>

  <%self:exrc title="Jak proměnit velblouda na hada" type="home" diffi="4">
    <p>Napište program, který dostane na příkazovém řádku název proměnné ve velbloudí notaci a vrátí tentýž název zapsaný v hadí notaci. </p>

    <p>Příklad:</p>
<pre>$ python3 velbloud-had.py velbloudHoniHada
velbloud_honi_hada
</pre>

    <p>Ano, tohle už není procházka růžovým sadem a jde o úložku spíše pro fajnšmekry, Python gurmány a lidi s neutišitelnou touhou nenechat žádný příklad nevyřešený. Vězte, že skutečně existuje řešení, které používá výhradně probrané techniky. Vyplatí se mrknout na to, jaké všechny metody nabízí Python řetězce, jinak ale není potřeba žádné googlení, jen se nesmíte bát věci, které už tak dobře znáte, opravdu použít, a nemít je ve své programátorské dílně jen vystavené za sklem.</p>

    <p>Některé pasáže programu si lze mírně ulehčit použítím funkce <code>enumerate()</code>, která vám při chroustání seznamů vrací nejen prvek seznamu, ale i jeho index. Vyzkoušejte například následující příkaz</p>

<pre>[[i, jmeno] for i, jmeno in ['petr', 'jana', 'vlasta', 'onyx']]</pre>

    <p>Úlohu lze však vyřešit i bez <code>enumerate()</code>!</p> 
  </%self:exrc>
</%self:exercises>