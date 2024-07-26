function calculateBMI() {
    var unit = document.getElementById("unitSystem").value;

    // Get decimals setting from HTML input
    var decimals = document.getElementById("inputDecimals").value;

    // Get height from HTML input
    var height = document.getElementById("inputHeight").value;

    // Get weight from HTML input
    var weight = document.getElementById("inputWeight").value;

    // Convert height centimeters to meters
    var meterHeight = height / 100;

    // Calculate BMI
    var bmi = weight / (meterHeight * meterHeight);

    // Round down calcultaed BMI to 1 decimal
    var bmi_rounded = decimalRounder(bmi, decimals);

    // Classify
    var classification = "";
    if (bmi_rounded < 18.5) {
        classification = "Underweight";
    } else if (bmi_rounded >= 18.5 && bmi_rounded < 25) {
        classification = "Normal";
    } else if (bmi_rounded >= 25 && bmi_rounded < 30) {
        classification = "Overweight";
    } else {
        classification = "Obese";
    }

    // Output sentence
    var sentence =
        "Your BMI is <i>" +
        bmi_rounded +
        "</i>, which classifies you as <i>" +
        classification +
        "</i>";

    // Output
    document.getElementById("result").innerHTML = sentence;
}
