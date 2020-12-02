import numpy as np

import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, func

from flask import Flask, jsonify

## setup Flask
app = Flask(__name__)


if __name__ == '__main__':
    app.run(debug=True)
