<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>V této kapitole si představíme úplné základy programování v Pythonu. Zatím ještě nebudeme psát celé programy, nýbrž budeme Pythonu posílat jednotlivé příkazy a uvidíme, co nám odpoví. Jak už jsme si řekli dříve, počítač je v podstatě jen trochu chytřejší a pekelně rychlá kalkulačka. Nejsnadněji se tedy s programováním seznámíme, když si pomocí Pythonu necháme něco spočítat. </p>

  <h2>Python konzole</h2>

  <p>Abychom si mohli s Pythonem povídat, musíme spustit takzvanou <em>Python konzoli</em>. To je prostředí, ve kterém můžeme s Pythonem komunikovat a posílat mu příkazy. </p>

  <p>Pokud pracujete pod Windows, Python konzoli spustíte tak, že do termínálu napíšete příkaz.</p>

  <pre>$ python</pre>

  <p>Pozor, že znak dolaru není součástí příkazu. Používáme ho pouze k tomu, abychom naznažili, že je třeba tento příkaz napsat do terminálu vašeho operačního systému. Pokud pracujete na Macu nebo Linuxu, správný příkaz je </p>

  <pre>$ python3</pre>

  <%self:alert_warning>
    Pokud v Linuxu nebo na Macu spustíte příkaz jako ve Windows, pravděpodobně se vám spustí jiná verze Pythonu, se kterou vám následující lekce nebudou fungovat.</p>
  </%self:alert_warning>

  <h2>Hodnoty</h2>
  <p><em>Hodnoty</em> představují všechny možné druhy dat, se kterými můžou naše programy pracovat. Hodnoty se dle způsobu použití dělí do různých kategoríí zvaných <em>datové typy</em>. Datových typů existuje velké množství. V tuto chvíli si představíme ty nejzákladnější - celá čísla a desetinná čísla.</p>

  <h3>Celá čísla</h3>

  <p>Nejjednodušší datový typ jsou <em>celá čísla</em>. Pod tento typ patří hodnoty jako 12, 1321500, -5, 0 a podobně. Pokud do Python konzole napíšete hodnotu, Python vám ji vypíše zpátky, což znamená, že vám rozumí :-)</p>

  <pre>&gt;&gt;&gt; 127
127</pre>

  <h3>Desetinná čísla</h3>
  <p>S celými čísly bychom si dlouho nevystačili. Dalším datovým typem tedy budou <em>desetinná čísla</em>, např. 13.4, 6.0, -0.0001, 0.0 apod. Pozor, že programátoři vždycky píší desetinná čísla s tečkou, nikoliv s čárkou. </p>

  <pre>&gt;&gt;&gt; 3.141592
3.141592</pre>

  <h2>Aritmetické operátory</h2>
  <p>Nyní už máme prostředky k tomu, abycho mohli pomocí Pythonu něco spočítat. V Python máme k dispozici běžné aritmetické operátory:</p>

  <ul>
    <li>sčítání: <strong>+</strong></li>
    <li>odčítání: <strong>-</strong></li>
    <li>násobení: <strong>*</strong></li>
    <li>dělení: <strong>/</strong></li>
  </ul>

  <p>Díky těmto operátorům můžeme Python použít jako kalkulačku a psát <em>aritmetické výrazy</em> jako</p>

  <pre>&gt;&gt;&gt; 12 * 13 + 10</pre>
  <pre>&gt;&gt;&gt; (13.4 - 1.4) / 4</pre>

  <p>Python ovšem nabízí ještě další užitečné operátory:</p>

  <ul>
    <li>mocnění: <strong>**</strong></li>
    <li>celočíselné dělení: <strong>//</strong></li>
    <li>zbytek po dělení: <strong>%</strong></li>
  </ul>

  <p>Pomocí mocnění můžeme umocňovat čísla, například</p>

  <pre>&gt;&gt;&gt; 2 ** 8
256</pre>

  <p>Pomocí celočíselného dělení můžeme dělit celá čísla</p>

  <pre>&gt;&gt;&gt; 14 // 4
3</pre>

  <p>Pokud by nás zajímal zbytek po celočíselném dělení, můžene použít opetáror pro zbytek po dělení</p>

  <pre>&gt;&gt;&gt; 14 % 4
2</pre>

  <h2>Řetězce</h2>
  <p>Pokud chceme v Pythonu zadat nějaký kousek textu, použijeme takzvaný <em>řetězec</em>. Řetězce se v Pythonu uzavírají do jednoduchých nebo dvojitých uvozovek. Například:</p>

  <div class="verbatim">
    <pre>&gt;&gt;&gt; 'martin'</pre>
    <pre>&gt;&gt;&gt; '12. března 2018'</pre>
    <pre>&gt;&gt;&gt; "prací prášek"</pre>
    <pre>&gt;&gt;&gt; "Don't panic"</pre>
  </div>

  <p>Řetězce se v něčem chovají podobně jako čísla, můžeme je například sčítat a násobit</p>

  <pre>&gt;&gt;&gt; 'martin' + ' ' + 'podloucký'
martin podloucký
&gt;&gt;&gt; 'bla ' * 10
'bla bla bla bla bla bla bla bla bla bla '</pre>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>

  <%self:exrc title="Jednoduchá aritmetika">
    <p>Použijte Python konzoli jako kalkulačku:</p>
    <ol>
      <li>Jeden lístek do divadla <em>Pěst na oko</em> stojí 12 euro. Spočítejte měsíční příjem divadla ze vstupného přichází-li průměrně 174 návštěvníků na jedno představení a divadlo hraje 15 představení měsíčně.</li>
      <li>Divadlo se rozhodlo prodávat studentské vstupné ve výši 65% plného vstupného. Jak se změní příjem divadla za jedno představení pokud víme, že třicet procent návštěvníků jsou studenti?</li>
    </ol>
    <%def name="solution()"></%def>
  </%self:exrc>
  
  <%self:exrc title="Hrátky s řetězci">
    <ol>
      <li>Vytvořte řetězec obsahující jméno divadla.</li>
      <li>Vytvořte řetězec obsahující jméno divadla tak, že sečtete dohromady jednoltivá slova toho jména.</li>
      <li>Zkuste vynásobit řetězec celým číslem. Jaký jste dostali výsledek?</li>
      <li>Vytvořte řetězec který vypadá takto: '111111000000', ale místo šesti jedniček a šesti nul obashuje 256 jedniček a 256 nul.</li>
    </ol>
    <%def name="solution()"></%def>
  </%self:exrc>

  ${self.alert_done()}

  <h2>Bonusy</h2>
  
  <%self:exrc title="Úroky">
    <p>Fíha banka a.s. nabízí na svých stránkách spořící účet s úrokem 2,4%. Když si na takový účet uložíte 1&nbsp;000&nbsp;000 kč, kolik peněz nastřádáte za 10 let?</p>
    <%def name="solution()"></%def>
  </%self:exrc>

  <%self:exrc title="Nový koberec">
    <p>Do malého sálu v divadle, který má tvar čtverce o rozloze 30m<sup>2</sup> potřebujeme koupit nový koberec. Jakou délku má mít strana koberce? Vejde se nám srolovaný do dodávky s nákladovým prostorem dlouhým 5m?</p>
    <%def name="solution()"></%def>
  </%self:exrc>

  <%self:exrc title="Shannonovo číslo">
    <ol>
      <li>Takzvané <em>Shannonovo číslo</em> má hodnotu 10<sup>120</sup> a udává kolik nejméně lze odehrát různých šachových partií. Vytvořte řetězec, který obsahuje toto číslo zapsané běžným způsobem pomocí cifer. Například 10<sup>3</sup> je 1000, 10<sup>6</sup> je 1000000 atd.</li>
      
      <li>Čísla s mnoha nulami je v Česku zvykem zapisovat tak, že každé tři nuly následuje mezera. Jeden milión se tedy zapíše jako 1&nbsp;000&nbsp;000. Vytvořte řetězec, který obsahuje Shannonovo číslo z předchozího cvičení zapsané v tomto formátu.</li>
    </ol>
    <%def name="solution()"></%def>
  </%self:exrc>
</%self:exercises>
