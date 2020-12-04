from flask import Flask, render_template, redirect
from flask_pymongo import PyMongo
import scrape_hw

## setup Flask
app = Flask(__name__)
#db url
app.config["MONGO_URI"] = "mongodb://localhost:27017/country_temperature.app"

mongo = PyMongo(app)

@app.route("/")
def index():
    country_list = mongo.db.country_list.find_one()
    return render_template("index.html", country_list=country_list)


@app.route("/scrape")
def scraper():
    country_list = mongo.db.country_list
    country_list_data = scrape_hw.scrape()
    country_list.update({}, country_list_data, upsert=True)
    return redirect("/", code=302)

#close of flask setup
if __name__ == '__main__':
    app.run(debug=True)
