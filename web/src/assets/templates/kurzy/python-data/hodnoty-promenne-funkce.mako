<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>V této kapitole si představíme úplné základy programování v Pythonu. Ještě nebudeme psát celé programy, ale budeme zatím  Pythonu posílat jednotlivé příkazy a uvidíme, co nám odpoví. </p>
  
  <p>Abychom si mohli s Pythonem povídat, musíme spustit takzvanou <em>Python konzoli</em>. To je prostředí, ve kterém můžeme s Pythonem komunikovat a posílat mu příkazy. </p>

  <p>Pokud pracujete pod Windows, Python konzoli spustíte tak, že do termínálu napíšete příkaz</p>

  <pre>$ python</pre>

  <p>Pokud pracujete na Macu nebo Linuxu, správný příkaz je </p>

  <pre>$ python3</pre>

  <p><strong>POZOR!</strong> Pokud v Linuxu nebo na Macu spustíte příkaz jako ve Windows, pravděpodobně se vám spustí jiná verze Pythonu, se kterou vám následující lekce nebudou fungovat.</p>

  <h2>Hodnoty</h2>
  <p><em>Hodnoty</em> představují všechny možné druhy dat, se kterými můžou naše programy pracovat. Hodnoty se dle způsobu použití dělí do různých kategoríí zvaných <em>datové typy</em>. Datových typů existuje velké množství. V tuto chvíli si představíme ty nejzákladnější - celá čísla a destinná čísla.</p>

  <h3>Celá čísla</h3>

  <p>Nejjednodušší datový typ jsou <em>celá čísla</em>. Pod tento typ patří hodnoty jako 12, 1321500, -5, 0 a podobně. </p>

  <p>Pokud do Python konzole napíšete hodnotu, Python vám ji vypíše zpátky, což znamená, že vám rozumí :-)</p>

<pre>&gt;&gt;&gt; 127
127</pre>

  <h3>Desetinná čísla</h3>
  <p>S celými čísly bychom si dlouho nevystačili. Dalším datovým typem tedy budou <em>desetinná čísla</em>, např. 13.4, 6.0, -0.0001, 0.0 apod. Pozor, že programátoři vždycky píší desetinná čísla s tečkou, nikoliv s čárkou.</p>

  <h2>Aritmetické operátory</h2>
  <p>Nyní už máme prostředky k tomu, abychom mohli pomocí Pythonu něco spočítat. V Pythonu máme k dispozici běžné aritmetické operátory:</p>

  <ul>
    <li>sčítání: <strong>+</strong></li>
    <li>odčítání: <strong>-</strong></li>
    <li>násobení: <strong>*</strong></li>
    <li>dělení: <strong>/</strong></li>
  </ul>

  <p>Díky těmto operátorům můžeme Python použít jako kalkulačku a psát <em>aritmetické výrazy</em> jako</p>

  <pre>&gt;&gt;&gt; 12 * 13 + 10</pre>
  <pre>&gt;&gt;&gt; (13.4 - 1.4) / 4</pre>

  <h2>Proměnné</h2>
  <p>Při komplikovanějších výpočtech se nám často stane, že si potřebujeme nějaký mezivýpočet uložit pro pozdější použití. K tomu nám slouží takzvané <em>proměnné</em>.</p>

  <p>Proměnná je jakási pojmenovaná krabička nebo šuplík, do kterého si můžeme uložit nějakou hodnotu, abychom ji neztratili a mohli ji používat v dalších výpočtech.</p>

  <p>Můžeme například v rámci dietního programu spočítat, kolik vanilkových věnečků denně jsme spořádali za posledních 5 dní. </p>

<pre>&gt;&gt;&gt; celkem = 1 + 2 + 4 + 1 + 6
&gt;&gt;&gt; prumer = celkem / 5</pre>

  <h3>Jména proměnných</h3>
  <p>Už od úplných začátků s programováním je dobré učit se dobrým návykům, které budou později prospěšné nejen vám, ale hlavně lidem ve vašem okolí. Jedním z takových návyků je správné pojmenovávání proměnných. </p>

  <ul>
    <li>Název proměnné by neměl začínat velkým písmenem, např. <var class="wrong">Pocet</var>. Takové názvy jsou rezervované pro speciální typy proměnných, ke kterým se v tomto kurzu nedostaneme. </li>
    <li>Název proměnné by neměl obsahovat diakritiku, např. <var class="wrong">počet</var>. Programovací jazyky vznikaly v anglickém prostředí, kde se diakritika napoužívá, takže si s ní většina jazyků neporadí. </li>
    <li>Víceslovné proměnné nesmí obsahovat mezeru, např. <var class="wrong">pocet hodin</var>. To by si Python myslel, že to jsou dvě proměnné za sebou a nevěděl by co s tím. Pokud chcete proměnnou s více slovy, použíjte takzvanou velbloudí notaci <var >pocetHodin</var> nebo hadí notaci <var>pocet_hodin</var>.</li>
    <li>Vždy proměnnou pojmenujte tak, aby její název jasně napovídal, co se uvnitř ní nachází. Například proměnná <var>pocet_hodin</var> jasně říká, že v ní bude asi nějaký počet hodin. Můžeme podlehnout touze název proměnné zkrátit například na <var class="wrong">pcthd</var> aby se nám lépe psala. Až ovšem někdo další bude takový program číst, bude mlátit hlavout do stolu cože proboha znamená zkratka <code>pcthdn</code>.</li>
    <li>Naposledy je dobré si uvědomit, že programy i programátoři se téměř vždy pohybují v mezinárodním prostředí. Takže je vždycky lepší pojmenovávat proměnné anglicky. V tomto kurzu ještě tohle pravidlo trošku rozvolníme, ale i tak si můžete začít zvykat na proměnné s názvem <var>number_of_hours</var>.</li>
  </ul>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>
  <a name="vyplata" />
  <%self:exrc title="Výplata">
    <ol>
      <li>Spočítejte svůj měsíční příjem víte-li, že pracujete 7 hodin denně se mzdou 450 Kč na hodinu. Řekněme, že měsíc má 21 pracovních dní.</li>
      <li>Uložte si počet pracovních hodin za den do proměnné <var>hodin</var>, hodinovou mzdu do proměnné <var>mzda</var> a počet pracovních dní do proměnné <var>dni</var>. Spočítejte svou výplatu s použitím těchto promenných.</li>
      <li>Pokud pracujete na živnostenský list, můžete si odečíst 60&nbsp;% příjmů jako paušál a ze zbytku zaplatíte 15% daň. Uložte si tyto hodnoty do proměnných <var>pausal</var> a <var>dan</var> a spočítejte svůj příjem po zdanění.</li>
    </ol>
    <%def name="solution()">
      <ol>
        <li>
<pre>&gt;&gt;&gt; 450 * 7 * 21
66150</pre>
        </li>
        <li>
<pre>&gt;&gt;&gt; hodin = 7
&gt;&gt;&gt; mzda = 450
&gt;&gt;&gt; dni = 21
&gt;&gt;&gt; mzda * hodin * dni
66150</pre>
        </li>
        <li>
<pre>&gt;&gt;&gt; hruba = mzda * hodin * dni
&gt;&gt;&gt; pausal = 0.6
&gt;&gt;&gt; dan = 0.15
&gt;&gt;&gt; dan_kc = hruba * (1 - pausal) * dan
&gt;&gt;&gt; cista = hruba - dan_kc
        </li>
    </ol>
    </%def>
  </%self:exrc>

  ${self.alert_done()}
</%self:exercises>

<%self:lesson>
  <h2>Funkce</h2>
  <p>S čísly jsme zatím byli schopní pracovat pouze pomocí aritmetických operátorů. To nám ale brzy nebude stačit a budeme potřebovat složitejší operace, kterým říkáme <em>funkce</em>.</p>

  <p>Funkce je nějaký komplikovanější výpočet zabalený do jakési krabičky. Této krabičce dáme nějaké jméno, abychom jej mohli používat na různých místech v našem programu.</p>

  <p>Dobrým příkladem je funkce <code>round()</code>, která pro nás dělá zaokrouhlování. Můžeme tedy psát</p>

<pre>&gt;&gt;&gt; round(3.4)
3</pre>

  <p>Tomuto zápisu se říká <em>volání funkce</em>. Když funkci voláme, předáváme jí takzvaný <em>argument</em>, v našem případě číslo 3.4. Když funkci zavoláme s nějakým argumentem, funkce takzvaně <em>vrátí</em> výsledek.</p>

  <div class="text-img-right">
    <div class="row">
      <div class="col-md-6">
        <p>Funkci si můžeme představit například jako topinkovač. Topinkovač pro nás dělá nějakou užitečnou činnost, kterou chceme často opakovat (opéká topinky). Má svoje jméno (topinkovač). Do topinkovače dáme cheba (argument) a spustíme je (zavoláme). Topinkovač chvíli pracuje a pak nám vrátí výsledek - topinky. Důležité je, že nemusíme řešit jak to topinkovač vlastné dělá, že dokáže opéct chleba. Důležité pro nás je, že to umí a že jej můžeme kdykoliv použít.</p>
      </div>
      <div class="col-md-6">
        <img class="img-fluid" src="/img/python-data/toaster.jpg" alt="Toaster" />
      </div>
    </div>
    
    
  </div>

  <h2>Seznamy</h2>
  <p>Zatím jsme byli schopní do jedné proměnné uložit pouze jednu hodnotu. Pro práci s daty ale budeme potřebovat pracovat s větším množstvím hodnot než pouze s jednou. K tomu nám poslouží takzvané <em>seznamy</em></p>

  <p>Představme si, že si chci zaznamenat počet vanilkových věnečků snězených za posledních 7 dní. V Pythonu si můžu pro tento účel vytvořit seznam, který si uložím do vhodně pojmenované proměnné.</p>

  <pre>&gt;&gt;&gt; venecky = [1, 2, 4, 1, 6, 0, 1]</pre>

  <p><strong>POZOR!</strong> Programátoři jsou podivné bytosti, které vždy počítají od nuly, nikoliv od jedničky. Proto také první hodnota v našem seznamu má index 0.</p>

  <p>Chceme-li přistoupit k jednotlivým hodnotám uvnitř seznamu, použijeme k tomu hranaté závorky. </p>

<pre>&gt;&gt;&gt; venecky[0]
1
&gt;&gt;&gt; venecky[4]
6</pre>

  <p>Snadno také můžeme některou hodnotu v seznamu změnit. Například když si vzpomeneme, že jsme trošku zalhali ohledně konzumace věnečků v sobotu:</p>

  <pre>&gt;&gt;&gt; venecky[5] = 12</pre>

  <p>Z jednoho seznamu můžeme také získat menší kusy podle zadaných mezí</p>

<pre>&gt;&gt;&gt; venecky[2:5]
[4, 1, 6]
&gt;&gt;&gt; venecky[:3]
[1, 2, 4]
&gt;&gt;&gt; venecky[3:]
[1, 6, 12, 1]</pre>

  <h3>Vnořené seznamy</h3>
  <p>Seznam může obsahovat jakékoliv hodnoty, tedy nejen celá čísla. Nezapomeňte, že seznamy jsou také hodnoty, takže jeden seznam může obshaovat jiný seznam jako svůj prvek. Například takto: </p>

<pre>&gt;&gt;&gt; seznam = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]</pre>

  <p>Rozmyslete si, co vypíšou následující výrazy:</p>	

  <pre>&gt;&gt;&gt; seznam[0][1]</pre>
  <pre>&gt;&gt;&gt; seznam[2][0]</pre>
  <pre>&gt;&gt;&gt; seznam[1:][1]</pre>
  <pre>&gt;&gt;&gt; seznam[:1][2]</pre>

  <h3>Užitečné funkce nad seznamy</h3>
  <p>Pro práci se seznamy se nám může hodit několik funkcí:</p>

  <dl>
    <dt><code>len()</code></dt>
    <dd>Vrátí délku seznamu</dd>

    <dt><code>sum()</code></dt>
    <dd>Vrátí součet všech prvků v seznamu</dd>

    <dt><code>min()</code></dt>
    <dd>Vrátí nejmenší prvek seznamu</dd>

    <dt><code>max()</code></dt>
    <dd>Vrátí největší prvek seznamu</dd>

    <dt><code>sorted()</code></dt>
    <dd>Vrátí setříděný seznam</dd>
  </dl>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>
  <%self:exrc title="Pohyby na účtu">
    <p>Mějme seznam pohybů na nějakém bankovním účtu:</p>

    <pre>pohyby = [1200, -250, -800, 540, 721, -613, -222]</pre>
    <ol>
      <li>
        Vypište v pořadí třetí pohyb z uvedeného seznamu.
      </li>
      <li>
        Vypište všechny pohyby kromě prvních dvou.
      </li>
      <li>
        Vypište kolik je všech pohybů dohromady
      </li>
      <li>
        Pomocí volání vhodných funkcí vypište nejvyšší a nejnižší pohyb. 
      </li>
      <li>
        Spočítejte celkový přírustek na účtu za dané období. Pozor, že přírůstek může vyjít i záporný.
      </li>
    </ol>
    <%def name="solution()">
      <ol>
        <li>
<pre>&gt;&gt;&gt; pohyby[2]
-800</pre>
        </li>
        <li>
<pre>&gt;&gt;&gt; pohyby[2:]
[-800, 540, 721, -613, -222]</pre>
        </li>
        <li>
<pre>&gt;&gt;&gt; len(pohyby)
7</pre>
        </li>
    </%def>
  </%self:exrc>

  <%self:exrc title="Známky z písemek">
    <p>Představme si kurz, v jehož průběhu se píšou čtyři písemky. Kurzu se účastní šest účastníků. </p>

    <ol>
      <li>
        Vytvořte seznam známek ze všech písemek pro jednoho účastníka.
      </li>
      <li>
        Vytvořte seznam, který bude pro každého účastníka obsahovat seznam jeho známek.
      </li>
      <li>
        Zjistěte průměrnou známku ze všech písemek pro druhého účastníka v seznamu.
      </li>
    </ol>
    <%def name="solution()">
      Řešení zatím není k dispozici
    </%def>
  </%self:exrc>
</%self:exercises>

<%self:lesson>
  <h2>Povinné čtení na doma</h2>
  <p>Přečtěte si povídání o dalších vymoženostech Pythonu, které se nám nevešly do živé lekce. Cílem je, abyste se postupně učili rozumět textům o programování bez cizí pomoci.</p>

  <h3>Další hezké operátory</h3>
  <p>Během přednášky jsme neprobrali úplně všechny aritmetické operátory, které můžeme v Pythonu použít. Kromě sčítání, odčítání, násobení a dělení máme ještě tyto:</p>

  <ul>
    <li>Mocnění: <strong>**</strong></li>
    <li>Celočíselné dělení: <strong>//</strong></li>
    <li>Zbytek po dělení: <strong>%</strong></li>
  </ul>

  <p>Mocnění nás zachrání od zdlouhavého opakovného násobení, tedy místo abychom psali</p>

  <pre>&gt;&gt;&gt; 2*2*2*2*2</pre>

  <p>můžeme prostě napsat</p>

  <pre>&gt;&gt;&gt; 2**5</pre>

  <p>Pokud si na chvíli vybavíte kruté hodiny matematiky na střední škole, možná si vzpomenete, že mocnění lze použít i k zajímavějším výpočtům. Můžeme například spočítat druhou odmocninu. </p>

  <pre>&gt;&gt;&gt; 16**0.5
4</pre>

  <p>Dalším užitečným operátorem je celočíselné dělení. Dejme tomu, že jsme si dopřáli dlouhou dovolenou, která trvala 33 dní a chceme spočítat, kolik to bylo celých týdnů. Normální dělení nám vrátí desetinné číslo, takže místo toho použijeme dělení celočíselné.</p>

  <pre>&gt;&gt;&gt; 33 // 7
4</pre>

  <p>Všimněte si, že nám po čtyřech týdnech zbude ještě pár dní. Pokud chceme přesně vědět, kolik dní nám bylo po dělení sedmi, použijeme operátor <em>zbytek po dělení</em>.</p>

  <pre>&gt;&gt;&gt; 33 % 7
5</pre>
</%self:lesson>

<%self:exercises>
  <h2>Domácí úložky - povinné</h2>
  <p>Povinné v tomto případě znamená, že budu na další hodině přepokládat, že jste tyto úkoly alespoň zkusili, ne že se budu na vás zle mračit, když je neuděláte :-)</p>

  <%self:exrc title="Úroky" type="home" diffi="1">
    <p>Fíha banka a.s. nabízí na svých stránkách spořící účet s úrokem 2,4&nbsp;%. Když si na takový účet uložíte 1&nbsp;000&nbsp;000 kč, kolik peněz nastřádáte za 10 let?</p>
    
    <%def name="solution()">
<pre>&gt;&gt;&gt;round(1000000 * 1.024 ** 10)
1267651</pre>

      <p>Za deset let nastřádáme 1&nbsp;267&nbsp;651 kč</p>
    </%def>
  </%self:exrc>

  <%self:exrc title="Délka filmu" type="home" diffi="0">
    <p>V programu kin se často uvádí délka filmu v minutách. Například rozšířená verze filmu <em>Pán prstenů: Dvě věže</em> trvá 223 minut. My bychom ovšem délku filmu raději věděli v hodinách a minutách. Použijte operátory celočíselného dělení a dělení se zbytkem, abyste spočetli, kolik hodin a minut trvá film <em>Pán prstenů: Dvě věže.</em></p>
    
    <%def name="solution()">
      Řešení zatím není k dispozici
    </%def>
  </%self:exrc>

  <%self:exrc title="Průměrné teploty" type="home" diffi="1">
    <p>Následující tabulka obsahuje průměrné roční teploty v České republice za roky 2001 až 2010 (zdroj: Český hydrometeorologický ústav). </p>

    <table>
      <thead>
        <th>rok</th>
        <th>teplota °C</th>
      </thead>
      <tbody>
        <tr>
          <td>2001</td>
          <td>7.8</td>
        </tr>
        <tr>
          <td>2002</td>
          <td>8.7</td>
        </tr>
        <tr>
          <td>2003</td>
          <td>8.2</td>
        </tr>
        <tr>
          <td>2004</td>
          <td>7.8</td>
        </tr>
        <tr>
          <td>2005</td>
          <td>7.7</td>
        </tr>
        <tr>
          <td>2006</td>
          <td>8.2</td>
        </tr>
        <tr>
          <td>2007</td>
          <td>9.1</td>
        </tr>
        <tr>
          <td>2008</td>
          <td>8.9</td>
        </tr>
        <tr>
          <td>2009</td>
          <td>8.4</td>
        </tr>
        <tr>
          <td>2010</td>
          <td>7.2</td>
        </tr>
      </tbody>
    </table>

    <p>
      Vytvořte reprezentaci této tabulky pomocí seznamu seznamů. Zde existují dvě možnosti. Nejprve vytvořte seznam, který obsahuje řádky tabulky jako dvouprvkové seznamy a uložte jej do proměnné <var>radky</var>. Poté vytvořte seznam, který obsahuje sloupce tabulky, tedy dva seznamy po deseti prvcích. Uložte jej do proměnné <var>sloupce</var>.
    </p>
    <p>Pro obě tyto reprezentace vyřešte následující úkoly</p>

    <ol>
      <li>
        Získejte teplotu na třetím řádku tabulky.
      </li>
      <li>
        Získejte rok na pátém řádku tabulky.
      </li>
      <li>
        Získejte poslední řádek tabulky jako seznam.
      </li>
      <li>
        Vytvořte tabulku bez prvních dvou řádků.
      </li>
      <li>
        Vytvořte tabulku pouze z prvních dvou řádků.
      </li>
      <li>
        Vytvořte tabulku obsahující jen řádky 5, 6, 7, 8.
      </li>
      <li>
        Použitím proměnné <var>sloupce</var> vypište seznam teplot setřízený vzestupně podle velikosti. Šlo by to i pomocí proměnné <var>radky</var>, ale to ještě neumíme.
      </li>
    </ol>
    
    <%def name="solution()">
      Řešení zatím není k dispozici
    </%def>
  </%self:exrc>

  <%self:exrc title="Průměr" type="home" diffi="1">
    <p>Mějme proměnnou <var>s</var>, ve které předpokládáme uložený nějaký seznam. Sestavte v Python konzoli výraz (vzoreček), který spočítá průměrnou hodnotu v takovém seznamu. Otestujte jej na seznamech různých délek. </p>

    <%def name="solution()">
<pre>&gt;&gt;&gt; sum(s)/len(s)</pre>
    </%def>
  </%self:exrc>

  <h2>Domácí úložky - nepovinné</h1>
  <p>Konzumujte, pokud si chcete dál procvičovat Python.</p>

  <%self:exrc title="Nový koberec" type="home" diffi="1">
    <p>Do místnosti tvaru čtverce o rozloze 30&nbsp;m<sup>2</sup> 
    potřebujeme koupit nový koberec. Jakou délku má mít strana koberce? Vejde se nám srolovaný do dodávky s nákladovým prostorem dlouhým 5&nbsp;m?</p>

    <%def name="solution()">
      <p>Strana koberce je odmocnina z jeho obsahu.</p>
<pre>&gt;&gt;&gt; 30 ** 0.5
5.477225575051661
</pre>
      <p>Strana koberce má tedy délku téměř pět a půl metru. Do dodávky se nám tedy nevejde.</p>
    </%def>
  </%self:exrc>

  <%self:exrc title="Rozpětí" type="home" diffi="1">
    <p>Postupujte obdobně jako v úložce <strong>Průměr</strong>, ale tentokrát sestavte výraz pro výpočet <em>rozpětí</em>, tedy rozdílu mezi minimální a maximální hodnotou. </p>

    <%def name="solution()">
<pre>&gt;&gt;&gt; max(s) - min(s)</pre>
    </%def>
  </%self:exrc>

  <%self:exrc title="Vlastní minimum a maximum" type="home" diffi="2">
    <p>Prohlédněte si funkce pro práci se seznamy uvedené dříve v obsahu lekce. Představte si, že bychom neměli k dispozici funkce <code>min()</code> a <code>max()</code>. Dokázali byste vytvořit výraz, který zjistí minimální resp. maximální hodnotu v seznamu <var>s</var>? Můžete v tomto vzorečku použít cokoliv, co jsme probrali na lekci kromě samotných funkcí <code>min()</code> a <code>max()</code>.</p>

    <%def name="solution()">
      <p>Minimum:</p>
      <pre>&gt;&gt;&gt; sorted(s)[0]</pre>
      <p>Maximum:</p>
      <pre>&gt;&gt;&gt; sorted(s)[-1]</pre>
    </%def>
  </%self:exrc>

  <%self:exrc title="Střed seznamu" type="home" diffi="3">
    <p>Sestavte výraz, který vrátí číslo nacházející se přesně uprostřed v zadaném seznamu <var>s</var>. U seznamů liché délky je střed jasně definovaný, ovšem u seznamů sudé délky nám padne mezi dvě čísla. V takovém případě vyberte jako střed číslo blíž ke konci seznamu. </p>

    <%def name="solution()">
<pre>&gt;&gt;&gt; s[len(s)//2]</pre>
    </%def>
  </%self:exrc>

  <%self:exrc title="Střed seznamu podruhé" type="home" type="home" diffi="4">
    <p>Sestavte vzoreček, který vrátí číslo nacházející se přesně uprostřed v zadaném seznamu <var>s</var>. Tentokrát však u seznamů sudé délky vyberte jako střed číslo blíž k <em>začátku</em> seznamu. </p>

    <%def name="solution()">
<pre>&gt;&gt;&gt; s[(len(s)-1)//2]</pre>
    </%def>
  </%self:exrc>
</%self:exercises>
