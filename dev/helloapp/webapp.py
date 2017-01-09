from flask import Flask
application = Flask(__name__)

@application.route('/')
def my_blog():
    return 'Oi, mundo!'
