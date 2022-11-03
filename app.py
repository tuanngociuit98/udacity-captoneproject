from flask import Flask

app = Flask(__name__)


@app.route('/')
def index():
    return 'NGUYEN THIEN TUAN NGOC - NGOCNTT3'


app.run(host='0.0.0.0', port=80, debug=True)
