<%inherit file="/layout.mako"/>

<%def name="lesson()">
  <section class="lesson-section">
    <div class="container">
      ${caller.body()}
    </div>
  </section>
</%def>

<%def name="exercises()">
  <section class="exercises-section">
    <div class="container">
      ${caller.body()}
    </div>
  </section>
</%def>

<%def name="alert(type, title)">
  </div> <!-- container -->
  <div class="alert alert-${type}">
    <div class="container alert-container">
      <div class="alert-icon alert-icon-${type}"></div>
      <div class="alert-body">
        <div class="alert-title">
          ${title}
        </div>
        <p>
          ${caller.body()}
        </p>
      </div>
    </div>
  </div>
  <div class="container">
</%def>

<%def name="alert_done()">
  %if lang == 'en':
    <%self:alert type="done" title="Done!">
      Huray! If you have this far, it means you are done. Put a sticker on you monitor and if you feel like it continue with the bonus exercises.
    </%self:alert>
  %else:
    <%self:alert type="done" title="Hotovo!">
      Hurá, pokud jste dorazili až sem, máte hotovo. Nalepte si lísteček a pokud chcete, můžete pokračovat bonusovými příklady.
    </%self:alert>
  %endif
</%def>

<%def name="alert_warning()">
  %if lang == 'en':
    <%self:alert type="warning" title="Warning!">
      ${caller.body()}
    </%self:alert>
  %else:
    <%self:alert type="warning" title="Pozor!">
      ${caller.body()}
    </%self:alert>
  %endif
</%def>

<%def name="exrc(title, type='lesson', diffi='0')">
  <div class="exercise">
    <div class="exercise-title">
      <div class="exercise-num">${counter.next()}</div>
      <h3>${title}</h3>
    </div>
    <div class="exercise-body">
      %if type == 'home':
        <p><strong>Obtížnost: ${difficulties[lang][int(diffi)]}</strong></p>
      %endif
      ${caller.body()}
    </div>
    %if (type == 'lesson' and exkey == chapter.exkey) or (type == 'home' and hwkey == chapter.hwkey):
      <div class="exercise-buttons">
        <button 
          type="button" 
          class="btn btn-secondary" 
          data-toggle="modal" 
          data-target="#solution${counter.value}">
          Řešení
        </button>
      </div>
      <div id="solution${counter.value}" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Řešení</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body solution-body">
              ${caller.solution()}
            </div>
            <div class="modal-footer">
              <button 
                type="button"
                class="btn btn-secondary"
                data-dismiss="modal"
              >
                Close
              </button>
            </div>
          </div>
        </div>
      </div>
    %endif
  </div>
</%def>

<%block name="header">
  <div class="jumbotron jumbotron-fluid">
    <div class="container">
      <div class="row justify-content-center align-items-md-baseline">
        <div class="col-md-auto text-center">
          <div class="chapter-number">${chapter.nums[lang]}</div>
        </div>
        <div class="col-md-8 text-center">
          <h1 class="display-4">${chapter.title[lang]}</h1>
        </div>
      </div>
    </div>
  </div>
</%block>

<%block name="main">
  ${self.body()}
</%block>

