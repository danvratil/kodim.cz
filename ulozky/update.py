import os
import xml.etree.ElementTree as ET

def processFile(path):
  exId = path[2:-4]
  tree = ET.parse(path)
  section = tree.getroot()
  print(exId)
  
  for ex in section.findall('ex'):
    print(exId + '/' + ex.attrib['id'])
    print(ET.tostring(ex.find('assign'), encoding='unicode'))

for dirName, subdirList, fileList in os.walk('.'):
  for fname in fileList:
    if(fname.endswith('xml')):
      path = dirName + '/' + fname
      processFile(path)
      