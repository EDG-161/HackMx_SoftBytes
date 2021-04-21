import glob

import pandas as pd


def full(row):
    return f'{row.DISTRITO}-{row["NOMBRE MUNICIPIO"]}'


final = []

for file in glob.glob(f"./Distritos/*.xls"):
    data = pd.read_excel(file)
    final.append(data)

result = pd.concat(final)
result['full_distrito'] = result.apply(full, axis=1)
result.to_csv('final.csv', index= False)
