```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

class DataAnalysis:
    def __init__(self, data):
        self.data = pd.DataFrame(data)

    def get_summary(self):
        return self.data.describe()

    def get_correlation(self):
        return self.data.corr()

    def plot_data(self, columns):
        self.data[columns].plot(kind='bar')
        plt.show()

    def plot_correlation(self):
        corr = self.data.corr()
        sns.heatmap(corr, xticklabels=corr.columns, yticklabels=corr.columns, annot=True)
        plt.show()

    def plot_distribution(self, column):
        sns.displot(self.data[column])
        plt.show()

if __name__ == "__main__":
    # Sample data for testing
    data = {
        'user_messages': [50, 60, 70, 80, 90],
        'bot_messages': [45, 55, 65, 75, 85],
        'user_sentiment': [0.1, 0.2, 0.3, 0.4, 0.5],
        'bot_sentiment': [0.2, 0.3, 0.4, 0.5, 0.6]
    }

    analysis = DataAnalysis(data)
    print(analysis.get_summary())
    print(analysis.get_correlation())
    analysis.plot_data(['user_messages', 'bot_messages'])
    analysis.plot_correlation()
    analysis.plot_distribution('user_sentiment')
```