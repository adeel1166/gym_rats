String _getBMIComment(double bmi) {
    // Logic to determine BMI comment
    // Replace with your logic or use actual data
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi < 25) {
      return 'Healthy';
    } else if (bmi < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }
