<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Pro všechny programátory je důležité, aby rozuměli alespoň základům toho, jak počítače uvnitř pracují a na jakých myšlenkách jsou postaveny. Jak to vlastně počítač dělá, že umí spouštět vaše programy v Pythonu, brouzdat po vodách internetu nebo přehrávat video? Tento článek je takové první nakouknutí pod pokličku toho, co se v té chytré krabici před vámi vlastně. děje. Nebojte, nebude to zdaleka jen teorie. Právě naopak, dozvíte se mnoho praktických a užitečných věcí, které vám pomohou být lepšími programátory. Navíc díky tomu, že už nějaké základy programování máte, budete si moct všechny pojmy skutečně přímo osahat a vyzkoušet. </p>

  <h2>Jak počítač počítá</h2>

  <p>Jak už nám samotný název podsouvá, počítače jsou především o počítání. Pokud však máte za sebou nějaké základy programování v Pythonu nebo JavaScriptu, možná se vám zdá, že jste zas až tolik počítání nepotkali. Spíše jste poznávali funkce, podmínky, cykly, seznamy a další stavební bloky programů. Ovšem při vykonávání i velmi jednoduchého prográmku počítač vykonává ohromné množství počítání a práce s čísly, která vám zatím zůstává utajena. Abychom dokázali porozumět tomu, co se skutečně pod kapotou odehrává, potřebujeme nejprve pochopit, jak s čísly pracujeme my lidé.</p>

  <h3>Počítání lentilek</h3>
  
  <p>Začneme velice jednoduchým problémem takříkajíc z praxe. V rámci výuky dobrého hospodaření dostane ve svých osmi letech od rodičů velkou hrst lentilek. Abyste si mohli konzumaci dobře rozvrhnout, nejdříve bude potřeba lentilky spočítat. Můžete to zkusit podle následujícího obrázku.</p>

  <div class="text-center my-5">
    <img src="/img/python-party/lentils.jpg" alt="Lentilky" class="img-600" />
  </div>

  <p>S takto rozházenými lentilkami jde o dost otravný úkol. Pokud je počítáme jednu po druhé, je snadné v půlce práce náhodou na nějakou nezapomenout, což by byla tragédie. Ještě těžší úkol nás čeká, pokud máme podezření, že nám mladší sourozenec lentilky tajně krade a mustíme je každé ráno pravidelně přepočítat, abychom měli jistotu, že jsme přes noc nepřišli o kus svého bohatství.</p>

  <p>Řešení, které nás nejspíš brzo trkne, je uspořádat si lentilky v prostoru tak, aby bylo od pohledu jasné, kolik jich celkem je. Nad následujícím obrázkem nepotřebujeme strávit déle než několik vteřin, abychom zjistili, že lentilek je dohromady 137.</p>

  <div class="text-center my-5">
    <img src="/img/python-party/lentils-deci.jpg" alt="Lentilky desítkově" class="img-600" />
  </div>

  <p>Tento způsob uspořádání lentilek do skupin souvisí s tím, jak funguje náš běžný způsob zápisu čísel. Z obrázku vidíme, že máme jednu stovku, tři desítky a sedm jednotek lentilek, což se dá v Pythonu zapsat takto. </p>

<pre>&gt;&gt;&gt; 1 * 100 + 3 * 10 + 7 * 1
137</pre>

  <p>Tento způsob zápisu čísel, na který jsem tak zvyklí už od školky, se jmenuje poziční desítková soustava nebo také hindsko-arabská číselná soustava. Skutečnost, že tento systém má svůj název, nás navádí k tomu, že to není jediná možnost jak zapisovat počty lentilek. Například staří Římané by 137 zaspali jako CXXXVII.</p>

  <p>Naše desítková soustava má svůj název podle toho, že jejím základem je číslo deset. Při zápisu čísla totiž vždy počítáme hromádky po jednotkách, desítkách, stovkách, tisících a tak dále. Tou jsou všechno mocniny desítky, jak si můžeme v Pythonu snadno ověřit.</p>

<pre>&gt;&gt;&gt; [10 ** 0, 10 ** 1, 10 ** 2, 10 ** 3]
[1, 10, 100, 1000]</pre>

  <p>Fakt, že jako základ naší soustavy používáme číslo deset, patrně souvisí s tím, že máme na rukou celkem deset prstů. Těm hloubavějším z vás možná začne hlavou vrtat myšlenka, co by se tak stalo, kdybychom měli na rukou jiný počet prstů než zrovna deset. Abychom prozkoumali, kam nás taková zvědavost zavede, uděláme si výlet do jednoho Amerického města, o kterém nikdo netuší, kde ve skutečnosti leží. </p>

  <h2>Výlet do Springfieldu</h2>

  <p>To, že Springfield je domovem rodinky Simpsonových, bude asi pro většinu čtenářů tak samozřejmá znalost, jako počet prstů na svých rukou. Všimli jste si ale, že obyvatelé Springfieldu mají na každé ruce pouze čtyři prsty? Pokud nevěříte, zde je důkaz. </p>

  <div class="text-center my-5">
    <img src="/img/python-party/homer.jpg" alt="Homer Simpson" class="img-600" />
  </div>

  <p>Pokud obyvatelé Springfieldu přemýšlejí podobně jako my, jejich početní soustava bude na rozdíl od té naší založena na čísle 8. Homer by proto svoje lentilky uspořádal do skupinek po osmi, tedy takto:</p>

  <div class="text-center my-5">
    <img src="/img/python-party/lentils-octa.jpg" alt="Lentilky osmičkově" class="img-600" />
  </div>

  <p>Na obrázku máme dvě skupiny po 64 (osm skupinek po osmi), pak máme jednu skupinu osmi lentilek a pak nám ještě jedna zbyla. Následující výpočet ověřuje, že lentilek je pořád stejně, jen jsme je jinak uspořádali.</p>

<pre>&gt;&gt;&gt; 2 * 64 + 1 * 8 + 1 * 1
137</pre>

  <p></p>
</%self:lesson>