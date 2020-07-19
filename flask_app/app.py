from flask import Flask, render_template
from sensible.loginit import logger

log = logger(__name__)
app = Flask(__name__)


@app.route('/')
def home():
    return render_template('index.html')


if __name__ == '__main__':
    log.info("START Flask")
    app.debug = True
    app.run(host='0.0.0.0', port=5001)
