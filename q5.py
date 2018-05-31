import sqlite3
import pandas as pd
from matplotlib import pyplot as plt
con = sqlite3.connect('atus.sqlite')

with open('q4.sql') as f:
    sql = f.read()

df = pd.read_sql(sql , con)

df['edited_sex'] = df['edited_sex'].map({1:'Male', 2:'Female'})

df = df.set_index(['edited_sex', 'AgeBins'])['timing'].unstack('edited_sex')

plot = df.plot()
plot.set(ylim = (0, 17),
       xlabel="Age(Decades)",
       ylabel="Time Spent Gaming (Hours)")
       
plt.savefig('gaming.png')
plt.show()
