import os
import sqlite3
import xml.etree.ElementTree as ET

def innerXML(element):
  return (
    (element.text or '') +
    ''.join(ET.tostring(e, 'unicode') for e in element)
  )

def processFile(conn, path):
  tree = ET.parse(path)
  section = tree.getroot()
  secID = path[2:-4]
  print('Processing section: ' + secID)
  cur = conn.cursor()

  sql = 'INSERT INTO sections (id,title_cz) VALUES (?,?)'
  values = (secID, section.attrib['title-cz'])
  cur.execute(sql, values)

  for ex in section.findall('ex'):
    assign = ex.find("./assign[@lang='cz']")
    assignID = ex.attrib['id'] 
    print('  Processing exercise: ' + assignID)
    sql = 'INSERT INTO assigns (id,assign_cz,section_id) VALUES(?,?,?)'
    values = (assignID, innerXML(assign), secID)
    cur.execute(sql, values)

if os.path.isfile('exercises.db'):
  os.remove('exercises.db')

with sqlite3.connect('exercises.db') as conn:
  with open('create.sql') as file:
    script = file.read()

    cur = conn.cursor()
    cur.executescript(script)

  for dirName, subdirList, fileList in os.walk('.'):
    for fname in fileList:
      if(fname.endswith('xml')):
        path = dirName + '/' + fname
        processFile(conn, path)
