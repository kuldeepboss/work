import pandas as pd

# Read the VOTER.CSV file into a dataframe
voter_df = pd.read_csv('VOTER.CSV')

# Filter the voter_df to display records where voter age is more than 65
filtered_voter_df = voter_df[voter_df['voter_age'] > 65]

# Display the filtered voter dataframe
print(filtered_voter_df)

# Read the STUDENT.CSV file into a dataframe
student_df = pd.read_csv('STUDENT.CSV')

# Display name and percentage of all students
print(student_df[['name', 'percentage']])

# Read the PHONE.CSV file into a dataframe
phone_df = pd.read_csv('PHONE.CSV')

# Filter the phone_df to display records where pin is 395009
filtered_phone_df = phone_df[phone_df['pin'] == 395009]

# Display the filtered phone dataframe
print(filtered_phone_df)
