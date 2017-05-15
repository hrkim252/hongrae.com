from sqlalchemy import Column, String, Integer
from apps.database import Base

class User(Base):
    __tablename__ = 'users'

    id = Column(Integer, primary_key=True)
    ID = Column(String, unique=True)
    PW = Column(String, unique=True)

    def __init__(self, ID=None, PW=None):
        self.ID = ID
        self.PW = PW

    def __repr__(self):
        return '{0}, {1}'.format(self.ID, self.PW)
