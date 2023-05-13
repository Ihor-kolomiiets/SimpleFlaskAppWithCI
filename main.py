from flask import Flask, jsonify


app = Flask(__name__)


@app.route("/")
def index():
    return jsonify({"message": "Hello, Worldo!"})

@app.route("/about")
def about():
    return jsonify({"owner": "Ihor Kolomiiets"})

if __name__ == "__main__":
    app.run()
