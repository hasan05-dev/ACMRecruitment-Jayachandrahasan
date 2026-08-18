import matplotlib.pyplot as plt
=> loads the plotting tool from matplotlib.

import seaborn as sns
=> loads the seaborn visualization library. it helps in creating attractive graphs with minimal code.

[] => indexing operator. it is used to pull out a specific column from the entire data.
ex - df['math score'] is used to grab the 'math score' column from df.

plt.title('  ')
to place a title at top of chart.
plt.xlabel('  ')
to add a text label to horizontal axis.  vice-versa for plt.ylabel('  ')
plt.show()
to open the window containing the final graph.

sns.barplot(x = '  ', y = '  ', data = df)
data = df is written to tell seaborn to look inside df
x = '  ', y = '  ' is written to place the values taken from the selected columns along the axes.

numeric_data = df[['math score', 'reading score', 'writing score']]
it is written to extract three specific columns from df and save them in variable, numeric_data.
double square brackets [[  ]] are required in pandas to select multiple columns at a time.

score_relations = numeric_data.corr()
.corr() is used to calculate the mathematical relationship between the numeric columns.
ex - if the result is a negative number, it means one number goes up, the other goes down.

score_relations is a table consisting of correlation numbers.
seaborn needs connection strengths to know which squares should be dark or light in a correlation matrix.

sns.heatmap(score_relations, annot = True)
=> it makes computer to assign colours base on number-to-colour scale (called colourmap).
annot is short form of annotation (writing notes)
annot = True => telling computer to type actual numbers inside the colured squares
annot = False => we will see coloured boxes with no numbers inside them

insights :
1. the histogram shows that most students scored in the average range.
2. the bar chart shows that male and female students performed very similar on the math exam.
3. from the box plot we can say :
   the bluebox of completed group shifted noticebly higher upwhich means students who completed test
   preparation course achieved higher reading scores.
   the little circles which represents outliners of none group reaching all the way down which means the
   test preparation course helped to eliminate low scores.
4. the scatter plot shows that group of blue dots form a dense diagonal line which depicts a strong +ve
   relation between math scores and reading scores.
5. the heatmap shows that :
   0.95 => depicts strong relation between reading scores and writing scores.
   all numbers in heatmap are positive which depicts strong and positive correlation among themmselves.
