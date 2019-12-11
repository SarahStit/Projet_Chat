from flask import Flask
from flaskext.mysql import MySQL

from flask import request, jsonify

app=Flask(__name__)

@app.route('/', methods= ['POST','GET'])
def index():
	return render_template('index.html')

if __name__ == '__main__':
	app.run(debug=True, port=5000)

#@app.route('/processjson', methods= ['POST','GET'])
#def processjson():
	#return jsonify({'result' : 'success!', 'name':name,'location':location,'randomkeylist':randomkeylist})

mysql = MySQL(app)
from flask import Flask, render_template, request
app = Flask(__name__)


app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'root'
app.config['MYSQL_DB'] = 'MyDB'

mysql = MySQL(app)


@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == "POST":
        details = request.form
        firstName = details['fname']
        lastName = details['lname']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO MyUsers(firstName, lastName) VALUES (%s, %s)", (firstName, lastName))
        mysql.connection.cEXommit()
        cur.close()
        return 'success'
    return render_template('index.html')


if __name__ == '__main__':
    app.run()

