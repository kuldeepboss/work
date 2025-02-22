def calculate_future_value(principal, rate, years):
    simple_interest = principal * rate * years / 100
    future_value = principal + simple_interest
    return future_value

principal_amount = float(input("Enter the principal amount: "))
rate_of_interest = float(input("Enter the rate of interest (in percentage): "))
number_of_years = float(input("Enter the number of years: "))

future_value = calculate_future_value(principal_amount, rate_of_interest, number_of_years)
print("Future value after", number_of_years, "years:", future_value)
