from flask import Flask
application = Flask(__name__)

@application.route('/')
def my_blog():
    return '<h1 style="color:#3399ff;">Welcome to my Lumi Blog!!</h1>'
