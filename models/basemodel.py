#!/usr/bin/python3
from uuid import uuid4

class BaseModel():


    def __init__(self):
        self.id = str(uuid4)
