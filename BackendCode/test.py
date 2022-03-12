import psycopg2

mydb = psycopg2.connect(
    host = 'localhost',
    user = 'postgres',
    password = 'Rithic@2002',
    database = 'hello'
)

mycursor = mydb.cursor()

sql = "INSERT INTO loginformdata(username,password) VALUES(%s,%s)"
username = "test"
password = "123"
values = (username,password)
mycursor.execute(sql,values)
mydb.commit()