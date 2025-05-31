import pandas as pd


output_file = '/Users/amihay/Downloads/arxiv_metadata.csv'


df = pd.read_csv(output_file, low_memory=False)
print(len(df['categories'].unique()))

#קובץ רק עם כאלו שיש להם קטגוריה אחת

df2 = df[df['categories'].dropna().str.split().apply(len) == 1]
df2.to_csv('/Users/amihay/Downloads/one_category.csv', index=False)


#קובץ עם כאלו שההקטגוריה שלהם מופיעה עם יותר מ10 פעמים
category_counts = df['categories'].value_counts()
num_categories_over_10 = (category_counts > 10).sum()

print(f"Number of categories with more than 10 occurrences: {num_categories_over_10}")

all_categories = df['categories'].dropna().str.split().explode()


category_counts = all_categories.value_counts().reset_index()
category_counts.columns = ['Category', 'Count']


filtered_categories = category_counts[category_counts['Count'] > 10]


print(f"Number of categories appearing more than 10 times: {len(filtered_categories)}")
print(filtered_categories)

filtered_categories.to_csv('/Users/amihay/Downloads/categories_over_10.csv', index=False)
