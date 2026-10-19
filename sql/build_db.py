"""Loads the synthetic CSVs into SQLite so the queries in this folder can be run: python build_db.py && python run_queries.py"""
import sqlite3, pandas as pd
con = sqlite3.connect("monetization.db")
for t in ["category_demand_trends", "buyer_intent_events", "audience_segments", "partner_pipeline"]:
    pd.read_csv(f"../data/{t}.csv").to_sql(t, con, if_exists="replace", index=False)
con.close(); print("monetization.db built")
