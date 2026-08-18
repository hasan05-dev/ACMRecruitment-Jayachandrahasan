data-refinery

description :

upto missing value, we did in data-explorer. after that,

to clean missing values => df.dropna  it drops null values.
if it finds a single exmpty set in a row, it will delete the entire row from the data.

to remove duplicate records => df.duplicated().sum()
df.duplicated()  it scans for identical records
.sum  it adds up all the identical records and gives a single number which represents the no. of extra repeating rows.

df.to_csv("cleaned_students_performance.csv")
here, df is the final cleaned dataset stored in python's memory.
.to_csv is a pandas action which means export to a csv file.

after this action, the cleaned csv file is stored in folder which is represented by a folder icon on left side panel.


