const EventEmitter = require("events");

var url = "https://someloggerservice.io";

class Logger extends EventEmitter {
    log(message) {
        // Send HTTP request
        console.log(message);

        // Raise an event
        this.emit("messageLogged", {
            id: 1,
            message: "db error message",
        });
    }
}

module.exports = Logger;
