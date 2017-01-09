from flask import Flask
application = Flask(__name__)

@application.route('/')
def my_blog():
    return '<h1 style="color:#ffa64d;">Oi, mundo!</h1>'
