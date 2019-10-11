<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Do této chvíle jsme uměli do nějaké proměnné uložit pouze jednu hodnotu, například číslo nebo řetězec. Počítače ale často potřebují pracovat v mnohem větším objemem dat, než je několik čísel nebo řetězců. </p>

  <p>Sekvence nám umožňují do jedné proměnné uložit více hodnot. Hodnoty uvnitř sekvencí sídlí na takzvaných <em>indexech</em>, které se vždy počítají od nuly. To je takový zvláštní programátorský úzus, že se většinou začíná počítat od nuly a ne od jedničky. Má to svoje důvody, které tady ovšem nebudeme rozvádět. Raději si rovnou ukážeme jedna z nejjednodušší sekvencí, a to je řetězec. Díky tomu, že řetězec je sekvence, je možné přistupovat k jednotlivým jeho prvkům, v tomto případě písmenům.</p>

<pre>&gt;&gt;&gt; jmeno = 'hubert'
&gt;&gt;&gt; jmeno[0]
'h'
&gt;&gt;&gt; jmeno[4]
'r'</pre>

  <p>Ty vůbec nejpoužívanější sekvence jsou ovšem seznamy. Do nich lze uložit jakékoliv množství hodnot jakéhokoliv typu. Dokonce můžeme mít seznamy seznamů.</p>

<pre>&gt;&gt;&gt; znamky = [2, 3, 4, 1, 1]
&gt;&gt;&gt; teploty = [13.4, 13.5, 12.8, 11.9]
&gt;&gt;&gt; uzivatele = ['mark', 'carl', 'eve', 'ellen']
&gt;&gt;&gt; platby = ['Jan Novák', 12000, true]
&gt;&gt;&gt; body = [[140, 120], [60, 92], [34, 68]]</pre>

  <p>Přístupy k indexům sekvencí se dají skládat za sebe. Můžeme tak získat například čtvrté písmenko druhého jména v seznamu <code>uzivatele</code></p>

<pre>&gt;&gt;&gt; uzivatele[1][3]
'l'</pre>

  <p>nebo první číslo třetího seznamu v proměnné <code>body</code></p>

<pre>&gt;&gt;&gt; points[2][0]
'l'</pre>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>
  
  <%self:exrc title="Řetězce jako sekvence">
    <ol>
      <li>Uložte si v Python konzoli do proměnné <var>jmeno</var> svoje celé jméno a nechte vypsat jeho třetí, pátý a sedmý znak. Vyzkoušejte, co se stane, když budete chtít znak na pozici, která překračuje délku řetězce. </li>
      <li>Upravte program <code>registrace.py</code> tak, že bude kromě uživatelského jména chtít také e-mailovou adresu. Ověřte, že adresa je v platném formátu, tedy že obsahuje zavináč, tečku a má alespoň pět znaků.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Seznamy">
    <p>Celé toto cvičení dělejte v příkazové řádce Pythonu.</p>
    <ol>
      <li>Vytvořte nějaký seznam celých čísel, například počty diváků na několika po sobě jdoucích představeních. Použije metodu <code>append</code> a přidejte do seznamu počet diváků na jednom dalším představení.</li>
      <li>Vytvořte nějaký seznam desetinných čísel, například zaplněnost divadla v několika po sobě jdoucích představeních.</li>
      <li>Vytvořte nějaký seznam řetězců, například seznam názvů několika divadelních představení, která divadlo hraje. Uložte tento seznam do proměnné <var>hry</var>. Uložte do nějaké proměnné druhou položku tohoto seznamu.</li>
      <li>Do proměnné <var>hodnoceni</var> uložte seznam hodnocení, které obdržela divadelní hra <em>Plyšáci na útěku</em> v různých recenzních časopisech. Hodnocení je vždy dvouprvkový seznam obsahující název recenzního časopisu jako řetězec a samotné hodnocení jako číslo mezi 1 až 10. Přidejte na konec tohoto seznamu nové hodnocení z časopisu Divadelní oběžník. </li>
    </ol>
  </%self:exrc>

  ${self.alert_done()}

  <h2>Bonusy</h2>
  
  <%self:exrc title="Ověřování hesla">
    <p>Ověřování hesla se někdy dělá tak, že se vás systém ptá pouze na některé jeho znaky. Napište program, který má uloženo heslo, které musí uživatel zadat. Pak se jej postupně zeptejte například na druhý, pátý a sedmý znak hesla. Propusťte uživatele pouze tehdy, zadá-li všechny tyto znaky správně. </p>
  </%self:exrc>


</%self:exercises>
