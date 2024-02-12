#!/usr/bin/env python3
import firebase_admin
from firebase_admin import db, credentials

cred = credentials.Certificate("credentials.json")
firebase = firebase_admin.initialize_app(cred, {"databaseURL":"https://storyme-dcd11-default-rtdb.firebaseio.com/"})

