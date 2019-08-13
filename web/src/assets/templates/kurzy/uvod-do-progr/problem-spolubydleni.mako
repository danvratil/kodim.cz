<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Možná se to nezdá, ale těch několika lekcích, kterými jste prošli, jste již vybavení téměř všemi nezbytnými technickými dovednostmi k tomu, abyste dokázali naprogramovat řešená našeho problém se spolubydlením ze začátku kurzu. Pravda, po takto krátkém kurzu ještě nemáte dost zkušeností na to, abyste si na výsledný program troufli sami. Když jej ale uvidíte už napsaný, začnete poznávat téměř všechny věci, které jsou v programu použity - proměnné, podmínky, seznamy, cykly a další. </p>

  <h2>Řešení</h2>
  <p>Připomeňme si tabulku výdajů, kterou jsme viděli na začátku kurzu. </p>

  <table>
    <thead>
      <th>Jméno</th>
      <th>Věc</th>
      <th>Částka</th>
    </thead>
    <tbody>
      <tr><td>Petr</td><td>Prací prášek</td><td>240 kč</td></tr>
      <tr><td>Ondra</td><td>Savo</td><td>80 kč</td></tr>
      <tr><td>Pavla</td><td>Toaleťák</td><td>65 kč</td></tr>
      <tr><td>Zuzka</td><td>Mýdlo</td><td>50 kč</td></tr>
      <tr><td>Pavla</td><td>Závěs do koupelny</td><td>350 kč</td></tr>
      <tr><td>Libor</td><td>Pivka na kolaudačku</td><td>124 kč</td></tr>
      <tr><td>Petr</td><td>Pytle na odpadky</td><td>75 kč</td></tr>
      <tr><td>Míša</td><td>Utěrky na nádobí</td><td>130 kč</td></tr>
      <tr><td>Ondra</td><td>Toaleťák</td><td>120 kč</td></tr>
      <tr><td>Míša</td><td>Pečící papír</td><td>30 kč</td></tr>
      <tr><td>Zuzka</td><td>Savo</td><td>80 kč</td></tr>
      <tr><td>Petr</td><td>Tapeta na záchod</td><td>315 kč</td></tr>
      <tr><td>Ondra</td><td>Toaleťák</td><td>64 kč</td></tr>
    </tbody>
  </table>

  <p>Popis řešení v lidské řeči by mohl vypadat například takto:</p>

  <ol>
    <li>Spočítej kolik každý člen utratil celkem,</li>
    <li>spočítej průměrnou útratu na jednoho člena,</li>
    <li>spočítej rozdíly jednotlivých členů proti průměru,</li>
    <li>všechny peníze těch, kteří zaplatili podprůměr, dej do banku,</li>
    <li>bank rozděl mezi ty, kteří zaplatili nad průměr.</li>
  </ol>

  <h3>Python program</h3>

  <p>Jelikož už umíme v Pythonu reprezentovat data pomocí seznamů, můžeme výše uvedenou tabulku zapsat jako seznam seznamů takto:</p>

<pre>
vydaje = [
  ['Petr', 'Prací prášek', 240],
  ['Ondra', 'Savo', 80],
  ['Pavla', 'Toaleťák', 65],
  ['Zuzka', 'Mýdlo', 50],
  ['Pavla', 'Závěs do koupelny', 350],
  ['Libor', 'Pivka na kolaudačku', 124],
  ['Petr', 'Pytle na odpadky', 75],
  ['Míša', 'Utěrky na nádobí', 130],
  ['Ondra', 'Toaleťák', 120],
  ['Míša', 'Pečící papír', 30],
  ['Zuzka', 'Savo', 80],
  ['Petr', 'Tapeta na záchod', 315],
  ['Ondra', 'Toaleťák', 64]
]</pre>

  <p>Druhý krok je přeložit lidský popis řešení do Python kódu. Takový program by mohl vypadat například takto:</p>  

<pre>
import statistics

seznamJmen = []
utraty = []

for vydaj in vydaje:
  jmeno = vydaj[0]
  utrata = vydaj[2]
  if jmeno in seznamJmen:
    index = seznamJmen.index(jmeno)
    utraty[index] += utrata
  else:
    seznamJmen.append(jmeno)
    utraty.append(utrata)

prumernaUtrata = statistics.mean(utraty)

for jmeno in seznamJmen:
  index = seznamJmen.index(jmeno)
  vyrovnani = round(utraty[index] - prumernaUtrata)
  if vyrovnani > 0:
    print(jmeno + ' dostane\t' + str(vyrovnani))
  else:
    print(jmeno + ' má dáti\t' + str(-vyrovnani))
</pre>

  <p>Seznamy v proměnných <var>seznamJmen</var> a <var>utraty</var> představují tabulku celkových útrat pro každého jednoho člověka.</p> 

  <p>Výsledný Python program si můžete stáhnout z <a href="/download/intro-to-progr/spolubydleni.py" download>tohoto odkazu</a>.</p>
</%self:lesson>
