import psycopg2
from random import choice

a = ['50', '60', '80', '95', '100']

print("Creando archivo...")

f = open("instructor-evaluations.sql", "wt")


print("Conectando con BD....")

conn = psycopg2.connect(
  database = "magenta",
  user = 'magenta',
  password = 'magenta',
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
  cursor.execute('''SELECT instructor_id, activity_id
                    FROM instructor
                    WHERE activity_id = '''
                    + 
                    str(activity[0]) 
                )

  instructors = cursor.fetchall()

  cursor.execute('''SELECT participant_id, activity_id
                    FROM participant
                    WHERE activity_id = '''
                    + 
                    str(activity[0]) 
                )
  participants = cursor.fetchall()



  for participant in participants:

    for instructor in instructors:

      f.write("INSERT INTO INSTRUCTOR_EVALUATION (INSTRUCTOR_EVALUATION_ID, QUESTION_1, QUESTION_2, QUESTION_3, QUESTION_4, QUESTION_5, QUESTION_6, QUESTION_7, QUESTION_8,  INSTRUCTOR_ID, PARTICIPANT_ID) VALUES (NEXTVAL('INSTRUCTOR_EVALUATION_SEQ'), " + choice(a) +", " + choice(a) +", "+ choice(a) +", "+ choice(a) +", "+ choice(a) +", "+ choice(a) +", "+ choice(a) +", "+ choice(a) +", " + str(instructor[0]) +", " + str(participant[0]) +");\n")


print("Cerrando conexión y archivo....")
conn.close
f.close()