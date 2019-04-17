<%inherit file="/course-chapter.mako"/>

<%self:lesson>

  <p>Cílem tohoto kurzu není z vás udělat programátory, protože to je běh na mnohem delší trať než na jakou máme během jediného dne čas. Co ale za jeden den stihneme je nahlédnout pod pokličku toho, jak vypadá každodenní práce programátora nebo vývojáře a ochutnat jaké problémy se v programátorské praxi řeší.</p>

  <p>Programování z velké části sestává z psaní kódu v nějakém programovacím jazyce. Než ale vůbec můžeme začít něco takzvaně kódit, musíme si dobře rozmyslet, jak zadaný problém vlastně budeme řešit. Je to podobné jako když spisovatel nejdříve vymyslí zápletku příběhu a až poté může sednout k počítači a začít ťukat obsah knihy.</p>

  <h2>Problém spolubydlení</h2>

  <p>Psát kód zatím ještě neumíme, ale programátorský způsob přemýšlení nad problémy si můžeme vyzkoušet už nyní. </p>

  <p>Představte si šest spolubydlících: Libora, Zuzku, Patra, Pavlu, Ondru a Míšu. Žijí v jednom bytě a dělí se o náklady na společně používané věci jako je toaletní papír, mýdlo, prací prášek apod. Postupně svoje útraty zapisují do tabulky, která může vypadat například takto:</p>

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

  <p>Dejme tomu, že uplynulo například půl roku a spolubydlící se chtějí navzájem finančně vyrovnat. Vaším úkolem je vymyslet přesný postup, který mají následovat, aby došlo k celkovému vyrovnání všech lidí. Důležité je, že tento postup musíme vymyslet tak, abychom jej později dokázali sdělit počítači, což znamená, že náš postup musí být opravdu detailní. Nelze přikazovat věci typu "rozpočítej útratu mezi všechny účastníky". Takové příkazy počítač nezná. Budeme muset pracovat s určitými omezeními.</p>

  <h3>Počítač za nás nebude přemýšlet</h3>
  <p>Počítač si můžeme představit jako naprosto hloupého úředníka s tužkou, papírem a kalkulačkou. Naprosto nerozumí pojmům jako účastník, částka, rozpočítat apod., vůbec neumí samostatně přemýšlet. Všechno mu musíme vysvětlit polopaticky a nevynechat žádný detail, na kterém by se mohl zaseknout. On umí pouze základní početní operace na kalkulačce, umí si něco poznamenat na papír a to je tak všechno. </p>

  <h3>Počítač nekouká doleva ani doprava</h3>
  <p>Pokud se podíváte na naši tabulku výdajů, možná budete mít nutkání ji vyřešit tak říkajíc šmahem: prostě kouknu a vidím, nějak to tady přičtu, tady odečtu a hotovo. To se může celkem povést pro tabulku o šesti lidech. Těžko ale takový postup uplatníme například pro menší Švýcarskou vesnici, která má 375 obyvatel a v tabulce výdajů je 8 822 záznamů. Pro vaši představu, taková data zaberou oboustranně 197 listů A4 a těžko je můžeme zpracovat šmahem. Máte-li nutkání si tabulku skutečně prohlédnout, můžete si ji stáhnout <A href="/download/intro-to-progr/tabulka.pdf">zde ve formátu PDF</a>.</p>

</%self:lesson>
