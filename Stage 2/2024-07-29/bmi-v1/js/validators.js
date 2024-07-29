/**
 *
 *  These validation function return false if the value is valid
 *  and a error description if it is not
 *
 */

function nameValidator(name) {
    var nameErrors = "";
    if (name == "") {
        nameErrors = nameErrors + "Please enter your name.<br>";
    }
    if (name.match(/[^a-zA-Z ]/)) {
        nameErrors = nameErrors + "Can only contain letters and spaces.<br>";
    }
    if (name.replace(/ /g, "").length < 2) {
        nameErrors = nameErrors + "Must contain at least 2 letters.<br>";
    }
    return nameErrors;
}

function numberValidator(value, min, max, string) {
    var numberErrors = "";
    if (value == 0) {
        numberErrors = numberErrors + "Please enter your " + string + ".<br>";
    }
    if (isNaN(value)) {
        numberErrors = numberErrors + string + "must be a number.<br>";
    }

    // min
    if (value < min) {
        numberErrors =
            numberErrors + string + " must be greater than " + min + ".<br>";
    }

    // max
    if (value > max) {
        numberErrors =
            numberErrors + string + " must be smaller than " + max + ".<br>";
    }

    return numberErrors;
}
