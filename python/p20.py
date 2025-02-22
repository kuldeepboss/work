import pandas as pd

# Creating CricketPlayers DataFrame
cricket_players_data = [
    {'Name': 'Player1', 'Matches Played': 50, 'Average Score': 45.5},
    {'Name': 'Player2', 'Matches Played': 45, 'Average Score': 55.2},
    {'Name': 'Player3', 'Matches Played': 55, 'Average Score': 42.1},
    {'Name': 'Player4', 'Matches Played': 48, 'Average Score': 47.8},
    {'Name': 'Player5', 'Matches Played': 60, 'Average Score': 50.3}
]
CricketPlayers = pd.DataFrame(cricket_players_data)

# Creating Result DataFrame
result_data = {
    'Roll Number': pd.Series([101, 102, 103, 104, 105]),
    'Percentage_Last_Year': pd.Series([80.5, 85.2, 78.3, 90.1, 87.6]),
    'Percentage_Year_Minus_1': pd.Series([75.0, 82.1, 76.5, 88.3, 84.9]),
    'Percentage_Year_Minus_2': pd.Series([70.2, 79.5, 74.8, 85.6, 82.0]),
    'Percentage_Year_Minus_3': pd.Series([65.8, 76.3, 72.1, 82.7, 79.4]),
    'Percentage_Year_Minus_4': pd.Series([60.5, 73.7, 69.4, 80.2, 76.5])
}
Result = pd.DataFrame(result_data)

# Displaying the DataFrames
print("CricketPlayers DataFrame:")
print(CricketPlayers)
print("\nResult DataFrame:")
print(Result)
