from flask import Flask, render_template, jsonify, request
from apps.database import db_session
from apps.models import User

app = Flask(__name__)

login = False

@app.teardown_appcontext
def shutdown_session(exception=None):
    db_session.remove()

@app.route("/")
def index():
    return render_template("index.tpl", login=login)

@app.route("/login")
def login():
    global login
    return render_template("login.tpl", login=login)

@app.route("/try_login")
def try_login():
    id = request.args.get("id")
    password = request.args.get("password")

    for u in User.query.all():
        if id == u.ID and password == u.PW:
            global login
            login = True
            return jsonify(result=True)

    return jsonify(result=False)

@app.route("/try_logout")
def try_logout():
    logout = request.args.get("logout")
    
    if logout == "true":
        global login
        login = False
        return jsonify(result=None)
