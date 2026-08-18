Data-Explorer

description :

initially we imported the csv file and loaded the dataset using pandas (a data analysis toolkit).
pd is shortcut for pandas and df means data frame (a data table with rows and columns).

df = pd.read_csv("StudentsPerformance.csv")
=> to get the data from computer. pd.read means to tell pandas to open and read the csv file.

print(df.head())
=> to get the first 5 rows.

to get dataset shape => df.shape  it will give you in a format (rows, columns)

to get list of all columns => df.columns  it will give you list of column headings
Index([...])  represents pandas way of saying and dtype = 'object' means pandas names text columns as objects.

to get data types => df.dtypes  if data is made up of numbers it will give int64 and if made up of text it will give object.

to get all missing values => df.isnull().sum  df.isnull() will look at every box, if it is blank it will return True.
.sum() takes all those blank spots from each column. it will display 0 if there are no blank spots.

to get summary about statistics => df.describe()
it will give count (total no. of non-empty rows), mean, std (standard deviation - spreading of score), min, max, 25%, 50%, 75% percentiles.
ex - 75% => it is the score which separates the top 25% of students from rest.

