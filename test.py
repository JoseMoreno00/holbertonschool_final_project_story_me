#!/usr/bin/python3
import firebase_admin
from firebase_admin import credentials, db, storage


c = credentials.Certificate("credentials.json")
database = firebase_admin.initialize_app(
    c,{
    'storageBucket': 'storyme-dcd11.appspot.com'
})

class UPLOADIMG():
    def __init__(self):
        self.database = firebase_admin.initialize_app(
    c,{
    'storageBucket': 'storyme-dcd11.appspot.com'})
    def uploadimg(book, style, n):
        for  idx in range(0, n + 1):
            fn = f"({idx})-{book}-{style}.jpg"
            bucket = storage.bucket()
            blob = bucket.blob(f'{book}/{style}/{fn}')
            blob.upload_from_filename(f'{fn}')

uplpoad = UPLOADIMG()
uplpoad.uploadimg('3_little_pigs_PM', '8bit', 13)