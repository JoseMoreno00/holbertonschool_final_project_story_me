#!/usr/bin/env python3
import firebase_admin
from firebase_admin import credentials, db
import json

cred = credentials.Certificate("credentials.json")
database = firebase_admin.initialize_app(cred, {"databaseURL":"https://storyme-dcd11-default-rtdb.firebaseio.com/"})

ref = db.reference("/")

# Todo esto tiene que estar dentro de una funcion
# class db_storage():
#     def add_book(self):
# with open("los3chanchi.txt.json", "r") as book:
#     file_content = json.load(book)
# ref.set(file_content)
ref.delete()