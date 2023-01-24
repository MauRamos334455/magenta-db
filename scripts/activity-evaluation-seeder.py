import psycopg2
from lorem.text import TextLorem
from random import choice

a = ['50', '60', '80', '95', '100']

b = ['false', 'true']

c = ['IPJO', 'IPJ', 'IPO', 'IP', 'IJO', 'IO', 'O',
     'I', 'PJO', 'PJ', 'PO', 'P','IJO', 'JO', 'J',
    ]
    
d = ['PHCO', 'PHC', 'PHO', 'PH', 'PCO', 'PC', 'PO', 
     'P', 'HCO', 'HC', 'HO', 'H', 'O', 'CO', 'C'
    ]

lorem = TextLorem(srange=(10,20))

print("Creando archivo...")

f = open("activity-evaluations.sql", "wt")


print("Conectando con BD....")

conn = psycopg2.connect(
  database = "magestic",
  user = 'magestic',
  password = 'magestic',
  host = '127.0.0.1',
  port = 5432
)

cursor = conn.cursor()

cursor.execute('''SELECT activity_id
                  FROM activity
              ''')

activities = cursor.fetchall()

print("Realizando archivo...")
for activity in activities :

  cursor.execute('''SELECT participant_id
                    FROM participant
                    WHERE activity_id = '''
                    + 
                    str(activity[0]) 
                )
  participants = cursor.fetchall()



  for participant in participants:

    sql_sentence = ('''INSERT INTO ACTIVITY_EVALUATION '''
    '''(ACTIVITY_EVALUATION_ID, QUESTION_1_1, '''
    '''QUESTION_1_2, QUESTION_1_3, QUESTION_1_4, '''
    '''QUESTION_1_5, QUESTION_2_1, QUESTION_2_2, '''
    '''QUESTION_2_3, QUESTION_2_4, QUESTION_3_1, '''
    '''QUESTION_3_2, QUESTION_3_3, QUESTION_3_4, QUESTION_4, '''
    '''QUESTION_5, QUESTION_6_1, QUESTION_6_2, QUESTION_6_3, '''
    '''QUESTION_7_1, QUESTION_7_2, QUESTION_8_1, '''
    '''QUESTION_8_2, PARTICIPANT_ID) VALUES ('''
    '''NEXTVAL('ACTIVITY_EVALUATION_SEQ'), '''    + 
    choice(a)  + ''', ''' + choice(a)  + ''', ''' + choice(a)  + ''', ''' +
    choice(a)  + ''', ''' + choice(a)  + ''', ''' + choice(a)  + ''', ''' +
    choice(a)  + ''', ''' + choice(a)  + ''', ''' + choice(a)  + ''', ''' +
    choice(a)  + ''', ''' + choice(a)  + ''', ''' + choice(a)  + ''', ''' +
    choice(a)  + ''', ''' + choice(b)  +
    ''', \''''   + choice(c)        + '''\', \'''' + lorem.sentence() +
    '''\', \'''' + lorem.sentence() + '''\', \'''' + lorem.sentence() +
    '''\', \'''' + choice(d)        + '''\', \'''' + lorem.sentence() +
    '''\', \'''' + lorem.sentence() + '''\', \'''' + lorem.sentence() +
    '''\', ''' + 
    str(participant[0]) + ''');\n''')

    f.write(sql_sentence)


print("Cerrando conexión y archivo....")
conn.close
f.close()