from flask import Flask, render_template, jsonify, request

app = Flask(__name__)

logIn = False

@app.route("/")
def index():
    return render_template("index.tpl", logIn=logIn)

@app.route("/login")
def login():
    id = request.args.get("id")
    password = request.args.get("password")

    if id == "hrkim" and password == "hongrae":
        global logIn
        logIn = True
        return jsonify(result=True)
    else:
        return jsonify(result=False)

@app.route("/logout")
def logout():
    logOut = request.args.get("logout")
    
    if logOut == "true":
        global logIn
        logIn = False
        return jsonify(result=None)
