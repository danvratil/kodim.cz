<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Ve statistice se často snažíme popsat nějaký soubor hodnot jedním číslem, které tento soubor nějak charakterizuje. Například platy v České republice můžeme charakterizovat číslem udávajícím průměrný plat. Průměrný plat však často bývá vychýlený směrem k vícepříjmovým skupinám, ve kterých je málo lidí ale zato s ohromnými příjmy. Více vypovídající charakteristikou tak může být například takzvaný medián. Tyto a další charakteristiky si popíšeme v této lekci.</p>
  
  <h2>Plošné testování</h2>
  <p>Mnoho studijních textů o statistice trpí tím, že vysvětlují látku velmi teoreticky, abstraktně a bez kontaktu s konkrétním použitím. Já se zde budu snažit postupovat obráceně a tedy nejdřív představím příklad takříkajíc "ze života", který poslouží jako uzemění pro veškerou látku této lekce. </p>

  <p>Představme si nějakou organizaci, která provádí plošné testování studentů například proto, aby studenti prověřili své znalosti před přijímačkami na vysokou školu. Mějme tedy test obecných studijních předpokladů, který probíhá jeden konrétní den v budově naší organizace. Test probíhá v devíti sálech, každý sál obsahuje dvanáct lavic po šesti studentech. Každý student může z testu získat 0 až 100 bodů.</p>

  <p>Vezměme si výsledky z testu pro jednu lavici o šesti studentech. Data si uložíme jako Python seznam:</p>

  <pre>data = [75, 81, 87, 58, 66, 74]</pre>

  <h2>Průměr</h2>
  <p>Jednou z hlavních statistických charakteristik je průměr, který je nejspíše všem dobře známý. Spočítáme jej tak, že sečteme všechny hodnoty a výsledek vydělíme jejich počtem. To pro našich šest studentů můžeme buď snadno udělat ručně za pomoci kalkulačky, nebo si pomůžeme Pythonem. Doplňme, že průměr se anglicky řekne <em>mean</em>.</p>

  <pre>mean = sum(data) / len(data)</pre>

  <p>Po provedení výpočtu zjistíme, že průměrné skóre našich šesti studentů je 73.5. </p>

  <h2>Rozptyl</h2>
  <p>Průměr nám udává jakýsi střed, kolem kterého se jednotlivé hodnoty pohybují. Neříká nám však jak daleko od středu se jednotlivé hodnoty nacházejí. Známý vtip říká, že když já jsme dnes k večeři neměl nic a můj soused celé kuře, statistika se mě snaží přesvědčit, že jsme měli každý půlku. </p>

  
</%self:lesson>
