import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# Load sample data
data = {
    "Order ID": [1001, 1002, 1003, 1004, 1005],
    "Order Date": ["2024-01-10", "2024-01-15", "2024-02-20", "2024-03-05", "2024-03-10"],
    "Region": ["East", "West", "East", "South", "North"],
    "Category": ["Furniture", "Office Supplies", "Technology", "Furniture", "Technology"],
    "Sub-Category": ["Chairs", "Paper", "Phones", "Tables", "Accessories"],
    "Sales": [250, 35, 800, 450, 150],
    "Quantity": [2, 5, 1, 3, 2],
    "Discount": [0.1, 0.0, 0.2, 0.15, 0.05],
    "Profit": [20, 5, 120, 50, 15],
    "Inventory Days": [30, 10, 5, 25, 15]
}
df = pd.DataFrame(data)

# Summary stats
print(df.describe())

# Profit by Category
sns.barplot(x="Category", y="Profit", data=df)
plt.title("Profit by Category")
plt.xticks(rotation=45)
plt.show()

# Inventory Days vs Profit
sns.scatterplot(x="Inventory Days", y="Profit", data=df, hue="Category", s=100)
plt.title("Inventory Days vs Profit")
plt.show()

# Correlation
corr = df[['Inventory Days', 'Profit']].corr()
print("Correlation Matrix:\n", corr)
