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
      Introduction to programming for all those who are playful and want to enjoy learning.
    </%def>
  </%self:pageIntro>
</%block>

<%block name="main">
  <section class="container tiles-section">
    <h2>Czechitas</h2>
    <p>Courses done in cooperation with <a href="https://www.czechitas.cz/en/">Czechitas</a>, who help women, girls and children to explore the world of information technologies.</p>

    <div class="courses">
      ${self.courseTile('courses', courses.get('en', 'intro-to-progr'))}
    </div>
  </section>
</%block>