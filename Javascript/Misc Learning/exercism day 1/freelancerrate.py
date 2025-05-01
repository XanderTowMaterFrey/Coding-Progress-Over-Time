def helpMePls(ratePerHour,numDays,discount):
    dailyRate = ratePerHour * 8
    print(f"dailyRate: {dailyRate}")

    numberOfMonths = numDays / 22
    print(f"numberOfMonths: {numberOfMonths}")
    roundedNumberOfMonths = round(numberOfMonths)
    print(f"roundedNumberOfMonths: {roundedNumberOfMonths}")

    monthlyRate = 22 * dailyRate
    print(f"monthlyRate: {monthlyRate}")
    discountedMonthlyRate = (1-discount) * monthlyRate
    print(f"discountedMonthlyRate: {discountedMonthlyRate}")

    totalCostForMonths = discountedMonthlyRate * roundedNumberOfMonths
    print(f"totalCostForMonths: {totalCostForMonths}")

    numberOfAdditionalDays = numDays % 22
    print(f"numberOfAdditionalDays: {numberOfAdditionalDays}")
    remainingDaysRate = numberOfAdditionalDays * dailyRate
    print(f"remainingDaysRate: {remainingDaysRate}")
    varry = remainingDaysRate + totalCostForMonths
    print("total: " + str(varry))

sratePerHour,snumDays,sdiscount = input("provide the rate per hour, number oof days, and discount please:\n").split(",")
# gets list, how to make into 3 vars
ratePerHour = float(sratePerHour)
numDays = float(snumDays)
discount = float(sdiscount)
helpMePls(ratePerHour,numDays,discount)
