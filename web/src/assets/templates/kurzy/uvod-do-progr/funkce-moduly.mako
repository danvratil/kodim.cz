<%inherit file="/course-chapter.mako"/>

<%self:lesson>

  <p>S čísly a řetězci jsme zatím byli schopní pracovat pouze pomocí aritmetických operátorů. To nám ale brzy nebude stačit a budeme potřebovat složitejší operace, kterým říkáme <em>funkce</em>.</p>

  <p>Funkce je nějaký komplikovanější výpočet nebo malý program zabalený do jakési krabičky. Této krabičce dáme nějaké jméno, abychom jej mohli používat na různých místech v našem programu. Funkci si můžeme představit jako topinkovač. Topinkovač pro nás dělá nějakou užitečnou činnost (opéká topinky), která by byla otravná a zdlouhavá, kdybychom ji chětli dělat sami, například smažit topinky na oleji na pánvičce. Každá funkce má svojě jméno a obykle má nějaký vstup (čerstvý chleba) a výstup (opečená topinka). Funkci spustíme tak, že ji takzvaně <em>zavoláme.</em></p>

  <p>Dobrým příkladem v jazyce Python je funkce <code>round()</code>, která pro nás dělá zaokrouhlování. Můžeme tedy psát</p>

<pre>&gt;&gt;&gt; round(3.141592)
3</pre>

  <p>Funkce se vždy volá tak, že napíšeme její jméno a do kulatých závorek za něj její vstupy (odborně se vstupům říká argumenty). V našem případě funkci předáváme jeden argument (vstup), číslo 3.141592. Když funkci zavoláme s nějakým argumentem, funkce takzvaně <em>vrátí</em> výsledek. </p>

  <p>Pozor na to, že zaokrouhlování v jazyce Python se chová trošku jinak než jak jsem zvyklí ze školy. Zkuste například následující příkazy:</p>

<pre>&gt;&gt;&gt; round(3.5)
4
&gt;&gt;&gt; round(2.5)
2
</pre>

  <p>Funkce <code>round()</code> totiž zaokrouhluje vždy k nejbližšímu sudému číslu pokud se vstup funkce nachází přesně uprostřed mezi dvěma hodnotami. Například 3.5 je přesně mezi 3 a 4. Díky tomuto pravidlu tak Python namísto zakrouhlování vždy nahoru zaokrouhluje v polovině případů nahoru a v polovině dolů. Je to jakýsi pokus být víc fér, ale zatím jsem napotkal žádný jiný programovací jazyk, který by se o něco takového snažil. </p>

  <p>Kromě funkce <code>round()</code> Python obsahuje mnoho dalších užitečných funkcí a mnoho z nich uvidíme v pozdějších částech tohoto kurzu. Nyní můžeme kromě funkce <code>round()</code> zmínit například funkci <code>len()</code>, která vrací počet znaků uvnitř nějakého řetězce. Například:</p>

<pre>&gt;&gt;&gt; jmeno = 'Theodor Holohlávek'
&gt;&gt;&gt; len(jmeno)
18
</pre>

  <h2>Moduly</h2>
  <p>Python sice obsahuje mnoho užitečných funkcí, ale vzhledem k množství problémů, které chceme pomocí Pythonu řešit, je to pořád málo a různých funkcí potřebujeme opravdu hodně. Abychom se v tom všem vyznali, třídíme funkce do takzvaných modulů.</p>

  <p>Jeden z užitečných modulů nese název <code>math</code>, a obsahuje mnoho standardních matematíckých funkcí. Mimo jiné obsahuje funkce pro zaokrouhlování nahoru a dolů. Pokud chceme modul <code>math</code> použít, musíme jej nadříve importovat příkazem</p>

<pre>&gt;&gt;&gt; import math</pre>

  <p>Poté, co tento příkaz zadáme do Python konzole, můžeme volat všechny funkce z tohoto modulu tak, že vždy před název funkce pomocí tečky připojíme název modulu, ze ktérého funkce pochází. Například</p>

<pre>&gt;&gt;&gt; math.ceil(3.14)
4</pre>

  <p>Dalším užitečným modulem ja modul <code>random</code>, který obsahuje funkce pro generouvání náhodných čísel. Jedna z takových funkcí se jmenuje <code>randint()</code>. Umí generovat náhodná celá čísla v zadaném rozmezí. Můžeme tak například simulovat házení kostkou.</p>

<pre>&gt;&gt;&gt; import random
&gt;&gt;&gt; random.randint(1, 6)
5
&gt;&gt;&gt; random.randint(1, 6)
1
&gt;&gt;&gt; random.randint(1, 6)
4
&gt;&gt;&gt; random.randint(1, 6)
4
&gt;&gt;&gt; random.randint(1, 6)
1
&gt;&gt;&gt; random.randint(1, 6)
2
&gt;&gt;&gt; random.randint(1, 6)
4</pre>
</%self:lesson>

<%self:exercises>

  <h2>Cvičení</h2>

  <%self:exrc title="Délka názvu">
    <p>Uložte si do proměnné <var>nazev</var> řetezec s názvem "Divadlo Pěst na oko". Pokud použijeme designové písmo nad hlavní vchod bodovy, jeden znak (i mezera) bude široký 30 cm. Použijte funkci <code>len()</code> abyste zjistili počet znaků v názvu divadla a spočíteje délku nápisu v centimetrech.</p>
  </%self:exrc>

  <%self:exrc title="Zaokrouhlování">
    <p>Divadlo chce mít ceny vstupenek jak v eurech tak v celých korunách. Uložte do proměné <var>eura</var> cenu studentské vstupenky (65% z 12 euro). Použíje funkci <code>round()</code> a do proměnné <var>koruny</var> spočítejte kolik činí studentské vstupné v korunách jestliže kurz eura je 24 korun.</p>
  </%self:exrc>

  <%self:exrc title="Zaokrouhlování nahoru">
    <p>Importujte modul <code>math</code> a vyzkoušejte si funkci <code>math.ceil()</code>, která slouží k zakrouhlování směrem nahoru. Proveďte zaokrouhlování z předchozího cvíčení na celé koruny směrem nahoru.</p>
  </%self:exrc>

  <%self:exrc title="Náhodná čísla">
    <p>Na informačním panelu v předsálí divadla se zobrazují informace o náhodných představeních. Pro tento panel potřebujeme generátor náhodných čísel, který bude generovat čísla představení mezi 1 až 24. Importujte modul <code>random</code> a použijte funkci <code>randint()</code> pro vygenerování několika náhodných čísel z tohoto rozsahu.</p>
  </%self:exrc>

  ${self.alert_done()}

  <h2>Bonusy</h2>

  <%self:exrc title="Klasické zaokrouhlování">
    <p>Překvapivě Python neobsahuje žádnou funkci, která by dělala klasické zaokrouhlování, tedy takové, na které jsme všichni zvyklí ze školy. S něčím takovým se nemůžeme spokojit.</p>

    <ol>
      <li>Zkuste vymyslet (za použití funkcí, které už znáte) příkaz, který zakrouhlí číslo v proměnné <var>cislo</var> na celé číslo klasickým zaokrouhlováním.</li>
      <li>Pokud si chcete svoje řešení otestovat, můžete si obsah proměnné <var>cislo</var> vygenerovat náhodně funkcí <code>random.uniform()</code>. Ta má stejné vstupy jako funkce <code>random.randint()</code>, generuje ale desetinná čísla. </li>
    </ol>
  </%self:exrc>
</%self:exercises>
