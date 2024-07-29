/**
 *
 *  These validation function return false if the value is valid
 *  and a error description if it is not
 *
 */

function nameValidator(name, fieldName) {
    if (name == "") {
        return "Please enter your " + fieldName + "<br>";
    }
    if (name.match(/[^a-zA-Z ]/)) {
        return fieldName + " can only contain letters and spaces.<br>";
    }
    if (name.replace(/ /g, "").length < 2) {
        return fieldName + " must contain at least 2 letters.<br>";
    }
    return "";
}

function numberValidator(value, min, max, string) {
    if (value == 0) {
        return "Please enter your " + string + ".<br>";
    }
    if (isNaN(value)) {
        return string + " must be a number.<br>";
    }

    // min
    if (value < min) {
        return string + " must be greater than " + min + ".<br>";
    }

    // max
    if (value > max) {
        return string + " must be smaller than " + max + ".<br>";
    }

    return "";
}

function emptyError(fieldName) {
    document.getElementById(fieldName).innerText = "";
}
