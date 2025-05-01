
const dailyHoursWorked = 8;
const billableDaysPerMonth = 22;

export function dayRate(ratePerHour) {
  return ratePerHour * dailyHoursWorked;
}


// we get a budget, then we gotta return how many days we can work 
export function daysInBudget(budget, ratePerHour) {
  let dailyRate = dayRate(ratePerHour);
  let daysOfWork = budget / dailyRate;
  return Math.floor(daysOfWork);
  }


// 22 billable days = 1 month //
// each month is discounted = numdays / 22 = var * discount rate + rate of remaining % 
the number of months
the rate for that 
the discounted rate instead

the remaining days 
the rate of that 

remaining days + discount month rate 

// Math.ceil(var)

/*
describe('cost with monthly discount', () => {
  describe('at 16/hour', () => {
    test('for 70 days', () => {
      const actual = priceWithMonthlyDiscount(16, 70, 0);
      const expected = 8960;
      expect(actual).toBeCloseTo(expected, DIFFERENCE_PRECISION_IN_DIGITS);
    });

    test('for 130 days with 15% discount', () => {
      const actual = priceWithMonthlyDiscount(16, 130, 0.15);
      const expected = 14528;
      expect(actual).toBeCloseTo(expected, DIFFERENCE_PRECISION_IN_DIGITS);
    });
  });
  describe('at 29.654321/hour', () => {
    test('for 220 days with 11.2%', () => {
      const actual = priceWithMonthlyDiscount(29.654321, 220, 0.112);
      const expected = 46347;
      expect(actual).toBeCloseTo(expected, DIFFERENCE_PRECISION_IN_DIGITS);
    });

    test('for 155 days with 25.47% discount', () => {
      const actual = priceWithMonthlyDiscount(29.654321, 155, 0.2547);
      const expected = 27467;
      expect(actual).toBeCloseTo(expected, DIFFERENCE_PRECISION_IN_DIGITS);
    });
  });});
*/

//priceWithMonthlyDiscount(89, 230, 0.42);
// => 97972

