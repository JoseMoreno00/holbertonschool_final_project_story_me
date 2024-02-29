#!/usr/bin/python3
import firebase_admin
from firebase_admin import credentials, db, storage


c = credentials.Certificate("credentials.json")
database = firebase_admin.initialize_app(
    c,{
    'storageBucket': 'storyme-dcd11.appspot.com'
})
bucket = storage.bucket()
for i in range(1, 14):
    blob = bucket.blob(f'3_little_pigs_PM/cyberpunk/({i})-3_little_pigs_PM-cyberpunk.jpg')
    blob.download_to_filename(filename=f'({i})-3_little_pigs_PM-cyberpunk.jpg')