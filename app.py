import pandas as pandas

csv_file = pandas.read_csv("Mobile_Food_Facility_Permit.csv")
csv_file.to_html("index.html")