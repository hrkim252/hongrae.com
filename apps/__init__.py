from flask import Flask, render_template

app = Flask(__name__)

login = False

@app.route("/")
def index():
    return render_template("index.tpl")
