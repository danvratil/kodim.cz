<%inherit file="/layout.mako"/>

<%def name="chapterTile(chapter)">
  <div class="chapter-tile">
    <div class="chapter-tile-num">${chapter.num}</div>
    <div class="chapter-info">
      <a href="../${chapter.link}"><h3 class="chapter-tile-title">${chapter.title}</h3></a>
      <p class="chapter-tile-desc">${chapter.desc}</p>
    </div>
  </div>
</%def>

<%def name="section(name)">
  <div class="chapters">
    %for chapter in course.section_by_name(name).all_chapters():
      ${chapterTile(chapter)}
    %endfor
  </div>
</%def>

<%block name="header">
  <div class="intro container">
    <img class="intro-image" src="/img/${course.link}/intro-icon.svg" alt="${course.title}" />
    <div class="intro-text">
      <h1 class="course-title">${course.title}</h1>
      <p class="intro-subtitle">
        ${course.subtitle}
      </p>
    </div>
  </div>
</%block>