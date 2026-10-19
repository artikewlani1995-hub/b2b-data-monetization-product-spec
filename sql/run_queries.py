import sqlite3, pandas as pd, glob
con = sqlite3.connect("monetization.db")
for f in sorted(glob.glob("*.sql")):
    print("\n==", f); print(pd.read_sql_query(open(f).read(), con).head(10).to_string(index=False))
