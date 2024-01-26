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
c = credentials.Certificate("credentials.json")
database = firebase_admin.initialize_app(
    c, {"databaseURL": "https://storyme-dcd11-default-rtdb.firebaseio.com/"})


class StoryMe(cmd.Cmd):
    prompt = " ~ story_me_console ~ "

    def do_cnvbook(self, book):
        """Function"""
        text = ""
        dicty = {f"{book.replace('.', '')}": ""}
        with open(book) as filename:
            for line in filename:
                text = text + line
            dicty[f"{book.replace('.', '_')}"] = text
        filename = open(f"{book}.json", "w", encoding="utf-8")
        json.dump(dicty, filename,  ensure_ascii=False, indent=4)
        filename.close()

    def do_sendbookdb(slef, data):
        lenguages = ["es", "en", "br"]
        x = data.split(" ")
        book, leng = x[0], x[1]
        namebook = book[:-9]
        print(namebook)
        if leng in lenguages:
            ref = db.reference(f"/books/{leng}/{namebook}")
            if book[-4:] == "json":
                with open(f"{book}", "r") as file:
                    file_content = json.load(file)
                ref.set(file_content)
            else:
                print(f"{book} not is a Json file")
        else:
            print("No manejo ese idioma xd")

    def do_cnvprompt(self, line):
        text = ""
        dicty = {}
        with open(f"{line}", "r") as filename:
            for linea in filename:
                text += linea
                split = linea.split(" .")
                dicty[f"{split[0]}"] = split[1]
        file = open(f"{line}.json", "w")
        json.dump(dicty, file, ensure_ascii=False, indent=4)
        file.close()

    def do_sendpromptdb(slef, data):
        styles = ["anime", "8bit", "cyberpunk"]
        x = data.split(" ")
        book, style = x[0], x[1]
        namebook = book[:-9]
        ref = db.reference(f"/promp/{style}/{namebook}")
        if style in styles:
            if book[-4:] == "json":
                with open(f"{book}", "r+") as file:
                    file_content = json.load(file)
                    for k, v in file_content.items():
                        new_v = v.replace('[INSERT STYLE]', '{}'.format(style))
                        file_content[k] = new_v
                ref.set(file_content)
            else:
                print(f"{book} not is a Json file")
        else:
            print("No manejo ese estilo xd")

    def do_quit(self, line):
        """Command to quit the console"""
        return True


if __name__ == "__main__":
    StoryMe().cmdloop()
