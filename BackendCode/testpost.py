import psycopg2

mydb = psycopg2.connect(
    host = 'localhost',
    user = 'postgres',
    password = 'Rithic@2002',
    database = 'hello'
)


mycursor = mydb.cursor()
sql = "INSERT INTO loginformdata(username,password) VALUES(%s,%s)"
values = ("rithic","password1")
sql1 = "SELECT * FROM loginformdata"
mycursor.execute(sql1)
x = mycursor.fetchall()
print(x)