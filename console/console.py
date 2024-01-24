#!/usr/bin/python3
import cmd
import json
from uuid import uuid4

"""

Console of the app StoryMe.
This console will be used for the addition of books and data management
without the need of an interface for its use, it will have
commands for its functionality.

"""

class StoryMe(cmd.Cmd):
    prompt = " ~ story_me_console ~ "
    

    def do_cnvbook(self, book, language):
        """Function"""
        # agarra archivo txt, ejecuta funcion para serializarlo en json
        
        text = ""
        dicty = {f"{book}": ""}
        with open(book) as filename:
            for line in filename:
                text = text + line
            dicty[f"{book}"] = text
        filename = open(f"{book}.json", "w", encoding="utf-8")
        json.dump(dicty, filename,  ensure_ascii = False, indent=4)
        filename.close()


    def do_quit(self, line):
        """Command to quit the console"""
        return True



if __name__ == "__main__":
    StoryMe().cmdloop()