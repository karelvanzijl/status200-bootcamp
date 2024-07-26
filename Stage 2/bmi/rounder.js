function decimalRounder(value, decimals) {
    var factor = Math.pow(10, decimals);
    var result = Math.round(value * factor) / factor;
    return result;
}
