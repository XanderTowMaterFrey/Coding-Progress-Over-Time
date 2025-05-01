export function priceWithMonthlyDiscount(ratePerHour, numDays, discount) {
  let dailyRate = dayRate(ratePerHour);

  let numberOfMonths = numDays / billableDaysPerMonth; // 10
  let roundedNumberOfMonths = numberOfMonths >> 0;

  let monthlyRate = billableDaysPerMonth * dailyRate; //15664
  let newMonthlyRate = discount * monthlyRate; //6578.88 - round this up
  let roundedMonthlyRate = (newMonthlyRate >> 0)+1; //6579

  let totalCostForMonths = roundedMonthlyRate * numberOfMonths;

  let numberOfAdditionalDays = numDays % billableDaysPerMonth; // 10
  let remainingDaysRate = numberOfAdditionalDays * dailyRate;

  return remainingDaysRate+totalCostForMonths;

  }

  const billableDaysPerMonth = 22;
