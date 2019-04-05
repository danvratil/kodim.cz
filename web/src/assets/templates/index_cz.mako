<%inherit file="/index.mako"/>

<%block name="header">
  <%self:pageIntro>
    <%def name="title()">
      Kódím<wbr><span class="display-em">.cz</span>
    </%def>
    
    <%def name="logo()">
      <img class="logo" src="/img/notebook.svg" alt="Notebook" />
    </%def>
    <%def name="lead()">
      Základy programování pro všechny, kteří si chtějí hrát a mít radost z učení.
    </%def>
  </%self:pageIntro>
</%block>

<%block name="main">
  <%self:section title="Czechitas">
    <%def name="lead()">
      <p>Kurzy pořádané ve spolupráci s <a href="https://www.czechitas.cz">Czechitas</a>, kteří pomáhají holkám, ženám i dětem poznat svět informačních technologií.</p>

      <p>Materiály v této části patří ke kurzům pořádaným naživo se mnou jako lektorem, podporou koučů a zázemím od některého z partnerů Czechitas. Nejsou tedy přímo určené k samostatnému studiu online. Pokud vás tyto kurzy zajímají, zamiřte na <a href="https://www.czechitas.cz/cs/kalendar-akci">kalendář akcí Czechitas</a> a přihlašte se na některý z termínů Úvodu do programování v Praze nebo na <a href="https://www.czechitas.cz/cs/co-delame/digitalni-akademie">Digitální akademii</a>.</p>
    </%def>
    <div class="row my-5">
      ${self.courseTile('kurzy', courses.get('cz', 'uvod-do-progr'))}
      ${self.courseTile('kurzy', courses.get('cz', 'python-data'))}
    </div>
    <div class="row my-5">
      ${self.courseTile('kurzy', courses.get('cz', 'uvod-do-js'))}
    </div>
  </%self:section>

  <%self:section title="Online kurzy">
    <%def name="lead()">
      <p>Kurzy v této sekci jsou určené k samostudiu online. Nepatří k žádným živým kurzům a jsou zde zdarma pro všechny, kteří se chtějí něco dozvědět o technologiích a programování.</p>
    </%def>
    <div class="row my-5">
      ${self.courseTile('kurzy', courses.get('cz', 'python-party'))}
      %if config['DEVELOP']:
        ${self.courseTile('kurzy', courses.get('cz', 'stat-pro-progr'))}
      %endif
    </div>
  </%self:section>
</%block>