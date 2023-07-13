# pip install pandas
# pip install numpy
# pip install SQLAlchemy
# pip install cx_Oracle

import pandas as pd 
import numpy  as np
import cx_Oracle
import sqlalchemy

from sqlalchemy.exc import SQLAlchemyError

try:
  engine = sqlalchemy.create_engine("oracle+cx_oracle://usr:pswd@localhost/?service_name=orclpdb1", arraysize=1000)

  table = """select * from users_p1""";
  users = pd.read_sql(table, engine)
  users
except SQLAlchemyError as e:
  print(e)
