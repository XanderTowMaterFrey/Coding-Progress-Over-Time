export function priceWithMonthlyDiscount(ratePerHour, numDays, discount) {
  let dailyRate = dayRate(ratePerHour);

  let numberOfMonths = Math.floor(numDays / billableDaysPerMonth);


  let monthlyRate = billableDaysPerMonth * dayRate(ratePerHour);
  let newMonthlyRate = discount * monthlyRate;
  let roundedMonthlyRate = Math.ceil(newMonthlyRate); // Round up using Math.ceil()
  
  let totalCostForMonths = roundedMonthlyRate * numberOfMonths;

  let numberOfAdditionalDays = numDays % billableDaysPerMonth;
  let remainingDaysRate = numberOfAdditionalDays * dayRate(ratePerHour);

  return remainingDaysRate + totalCostForMonths;
}
