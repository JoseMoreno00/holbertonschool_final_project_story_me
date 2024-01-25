#!/usr/bin/python3
import cmd
import json
import firebase_admin
from firebase_admin import credentials, db
"""

Console of the app StoryMe.
This console will be used for the addition of books and data management
without the need of an interface for its use, it will have
commands for its functionality.

"""
cred = credentials.Certificate("credentials.json")
database = firebase_admin.initialize_app(cred, {"databaseURL":"https://storyme-dcd11-default-rtdb.firebaseio.com/"})

class StoryMe(cmd.Cmd):
    prompt = " ~ story_me_console ~ "
    

    def do_cnvbook(self, book):
        """Function"""
        # agarra archivo txt, ejecuta funcion para serializarlo en json
        # Meter un if especifico para 3 lenguajes y serializar el libro guardandolo con su especificacion de idioma. Si nonse especifica lenguaje devolver un error. Probar con un try and except. En los try meter los if y en el except meter el error
        
        text = ""
        dicty = {f"{book.replace('.', '')}": ""}
        with open(book) as filename:
            for line in filename:
                text = text + line
            dicty[f"{book.replace('.', '')}"] = text
        filename = open(f"{book}.json", "w", encoding="utf-8")
        json.dump(dicty, filename,  ensure_ascii = False, indent=4)
        filename.close()
    
    def do_sendbookdb(slef, data):
        x = data.split(" ")
        book, leng = x[0], x[1]
        if leng == "spn":
            ref = db.reference(f"/books/{leng}")
            if book[-4:] == "json":
                with open(f"{book}", "r") as file:
                    file_content = json.load(file)
                ref.set(file_content)
            else:
                print(f"{book} not is a Json file")
        elif leng == "en":
            ref = db.reference(f"/books/{leng}")
            if book[-4:] == "json":
                with open(f"{book}", "r") as file:
                    file_content = json.load(file)
                ref.set(file_content)
            else:
                print(f"{book} not is a Json file")
        elif leng == "br":
            ref = db.reference(f"/books/{leng}")
            if book[-4:] == "json":
                with open(f"{book}", "r") as file:
                    file_content = json.load(file)
                ref.set(file_content)
            else:
                print(f"{book} not is a Json file")
        else:
            print("No manejo ese idioma xd")
    
    def do_quit(self, line):
        """Command to quit the console"""
        return True



if __name__ == "__main__":
    StoryMe().cmdloop()