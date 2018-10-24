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
    </%def>
    <div class="row my-5">
      ${self.courseTile('kurzy', courses.get('cz', 'uvod-do-progr'))}
      ${self.courseTile('kurzy', courses.get('cz', 'python-data'))}
    </div>
  </%self:section>

  <%doc>
    <section class="container">
      <h2>Pro zvídavé</h2>
      <p>Pro všechny, kteří se chtějí dozvědět víc a opravdu rozumět tomu, jak věci kolem počítačů fungují.</p>
      
      <div class="courses">
        ${index.courseTile(courses.get('cz', 'jak-to-funguje']))}
      </div>
    </section>
  </%doc>
</%block>