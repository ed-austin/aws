#! /Library/Frameworks/Python.framework/Versions/3.8/bin/python3.8
#import os
import sys
#import sqlite3

import sql_functions as s

db     = sys.argv[1]
source = sys.argv[2]
s.f_run_sql(db, source)


# EOF
