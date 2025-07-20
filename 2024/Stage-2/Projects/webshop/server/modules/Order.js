import fs from "fs";
import path from "path";

class Order {
    constructor(args) {
        this.db = args.db;
        this.response = args.response;
        this.url = args.url;
        this.pathname = args.pathname;
        this.httpCallback = args.httpCallback;
    }

    routes() {
        if (this.pathname === "/api/orders/pdf") {
            this.downloadPdf();
        }
    }

    downloadPdf() {
        const __dirname = path.resolve();
        const filename = "pdf1.pdf";
        const filePath = path.join(__dirname, "/", filename);

        console.log(__dirname, filePath);

        fs.access(filePath, fs.constants.F_OK, (err) => {
            if (err) {
                this.response.writeHead(404, { "Content-Type": "text/plain" });
                this.response.end("File not found");
            } else {
                this.response.writeHead(200, {
                    "Content-Type": "application/pdf",
                    "Content-Disposition": `attachment; filename=${filename}`, // To trigger download
                });

                // Stream the file to the response
                const readStream = fs.createReadStream(filePath);
                readStream.pipe(this.response);
            }
        });
    }

    getOrders() {}

    getOrder(id) {}
}

export default Order;
