#!/usr/bin/python3
from leonardo_api import Leonardo
import requests
import firebase_admin
from firebase_admin import credentials, db, storage
import os
"""

"""
c = credentials.Certificate("credentials.json")

database = firebase_admin.initialize_app(c,{
    "databaseURL": "https://storyme-dcd11-default-rtdb.firebaseio.com/"
})

storagedatabase = firebase_admin.initialize_app(c, name='storageBucket', options={
    "storageBucket": "storyme-dcd11.appspot.com"
})

class APILEONARDO():
    def __init__(self):
        self.leonardo = Leonardo(auth_token='eb36c72b-8bc7-4da4-bd40-bd90664c07a5')

    def request_ia(self, book, style):
        refdb = db.reference(f"/promp/{style}/{book}")
        promps = refdb.get()
        for key, values in promps.items():
            print(values)
            response = self.leonardo.post_generations(prompt=f"{values}", num_images=1,
                                            width=1024, height=768,
                                            guidance_scale=7)
            self.leonardo.wait_for_image_generation(generation_id=response['sdGenerationJob']['generationId'])
            postapi = []
            with open('leonardo_async.log', 'r') as filename:
                for line in filename:
                    postapi.append(line)
                postapi.reverse()
                while 1:
                    if len(postapi) != 1:
                        postapi.pop()
                    else:
                        break
                alpha = postapi[0]
                betta = alpha.split("{'generated_images': [{'url': '")
                charly = betta[1]
                delta = charly.split("', 'nsfw': False")
                url = delta[0]
                respuesta = requests.get(url)
                fn = f"{key}-{book}-{style}.jpg"
                with open(fn, 'wb') as archivo:
                    archivo.write(respuesta.content)

class UPLOADIMG():
    def uploadimg(self, book, style, n):
        for  idx in range(1, n + 1):
            fn = f"({idx})-{book}-{style}.jpg"
            bucket = storage.bucket('storyme-dcd11.appspot.com')
            blob = bucket.blob(f'{book}/{style}/{fn}')
            blob.upload_from_filename(f'{fn}')
            os.remove(fn)

# apires = APILEONARDO()
# apires.request_ia('3_little_pigs_PM', 'cyberpunk')
# uplpoad = UPLOADIMG()
# uplpoad.uploadimg('3_little_pigs_PM', 'cyberpunk', 13)
