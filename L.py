#Sigursteinn Óli Þorsteinsson
#07/11/18
#Verkefni 7

#from sys import argv
import pymysql
from bottle import *


@get("/")
def index():
     return template("index")

@route('/innskra')
def index():
    return template("innskra")

@route('/nyskra')
def index():
    return template("nyskra")

@route('/donyskra', method='POST')
def nyr():
    u = request.forms.get("user")
    p = request.forms.get("pass")
    n = request.forms.get("nafn")

    conn = pymysql.connect(host="tsuts.tskoli.is", port=3306, user="1803012590", password="mypassword", db="1803012590_vef_lok")
    cur = conn.cursor()

    cur.execute("SELECT count(*) FROM 1803012590_vef_lok.users where user=%s",(u))
    result = cur.fetchone()

    if result[0] == 0:
        cur.execute("INSERT INTO 1803012590_vef_lok.users Values(%s,%s,%s)", (u, p, n))
        conn.commit()
        cur.close()
        conn.close()
        return u, " hefur verið skráður <br><a href='/'>Heim</a>"
    else:
        return u, " er frátekið notendanafn, reyndu aftur <br><a href='/'#ny>Nýskrá</a>"

@route("/doinnskra", method="POST")
def doinn():
    u = request.forms.get("user")
    p = request.forms.get("pass")

    conn = pymysql.connect(host="tsuts.tskoli.is", port=3306, user="1803012590", password="mypassword", db="1803012590_vef_lok")
    cur = conn.cursor()

    cur.execute("SELECT count(*) FROM 1803012590_vef_lok.users where user=%s and pass=%s",(u,p))
    result = cur.fetchone()

    if result[0] == 1:
        
        cur.close()
        conn.close()
        return template("leyni.tpl",u=u)
    else:
        return template("ekkileyni.tpl")

@route("/comment", method="POST")
def index():
    u = request.forms.get("user")
    c = request.forms.get("comment")

    conn = pymysql.connect(host="tsuts.tskoli.is", port=3306, user="1803012590", password="mypassword", db="1803012590_vef_lok")
    cur = conn.cursor()

    cur.execute("SELECT count(*) FROM 1803012590_vef_lok.comment where comment=%s",(c))
    result = cur.fetchone()

    if result[0] == 0:
        cur.execute("INSERT INTO 1803012590_vef_lok.comment Values(%s)", (c))
        conn.commit()
        cur.close()
        conn.close()
        return "<h2>Þetta virkaði!</h2>"
    

    return template("comment",c=c)

@route("/members")
def member():
    conn = pymysql.connect(host="tsuts.tskoli.is", port=3306, user="1803012590", password="mypassword", db="1803012590_vef_lok")
    c = conn.cursor()
    c.execute("SELECT nafn FROM users")
    result = c.fetchall()
    c.close
    output = template("members",rows=result)
    return output



@route("/static/<skra>")
def static_skra(skra):
    return static_file(skra, root="./static")

@error(404)
def villa(error):
    return "<h1 style = color:red>Þessi síða finnst ekki</h1>"


run(debug=True)
#run(host='0.0.0.0', port=os.environ.get('PORT'))

