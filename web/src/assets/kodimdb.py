import sqlite3

class KodimDB:
  def __init__(self):
    self.db = sqlite3.connect('../db/kodim.db')
    self.db.row_factory = sqlite3.Row

  def allTypos(self):
    cur = self.db.execute('SELECT * FROM typos')
    return cur.fetchall()
  
  def addTypo(self, typo):
    query = '''
      INSERT INTO `typos` (`url`, `contextb`, `typo`, `contexta`, `time`, `user`)
      VALUES (?,?,?,?,?,?);
    '''
    
    cur = self.db.cursor()
    cur.execute(query, (
      typo['url'], 
      typo['contextb'], 
      typo['typo'], 
      typo['contexta'], 
      typo['time'],
      typo['user']
    ))
    self.db.commit()
    return cur.lastrowid
  
  def removeTypo(self, rowid):
    query = "DELETE FROM `typos` WHERE `id`=?;"
    cur = self.db.cursor()
    cur.execute(query, (rowid,))
    self.db.commit()
    return cur.lastrowid

  def close(self):
    self.db.close()