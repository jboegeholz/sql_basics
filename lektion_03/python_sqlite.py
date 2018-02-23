from sqlite3 import connect

db_connection = connect('knight_industries.db')
cursor = db_connection.cursor()

#cursor.execute('''DROP TABLE operatives''')
cursor.execute('''CREATE TABLE operatives (id INTEGER, name TEXT, birthday DATE)''')
cursor.execute('''INSERT INTO operatives (id, name, birthday) VALUES (1, "Michael Arthur Long", "1949-01-09")''')

db_connection.commit()

cursor.execute('''SELECT * FROM operatives''')
print cursor.fetchone()

db_connection.close()