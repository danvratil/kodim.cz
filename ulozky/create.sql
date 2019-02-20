-- sections table
CREATE TABLE sections (
  id text NOT NULL PRIMARY KEY,
  title_cz text NOT NULL,
  title_en text
);

-- exercises table
CREATE TABLE assigns (
  id text NOT NULL PRIMARY KEY,
  assign_cz text NOT NULL,
  assign_en text,
  solution_cz text,
  solution_en text,
  section_id text NOT NULL,
  FOREIGN KEY (section_id) REFERENCES section(id)
);