const http = require('http');
const fs = require('fs');
const path = require('path');
const { exec } = require('child_process');

const PORT = 3000;
const htmlFilePath = path.join(__dirname, 'index.html');

// Create HTTP server
const server = http.createServer((req, res) => {
    // Read the HTML file
    fs.readFile(htmlFilePath, (err, data) => {
        if (err) {
            res.writeHead(500);
            res.end('Error loading HTML file');
            return;
        }

        // Set content type and send HTML content
        res.writeHead(200, { 'Content-Type': 'text/html' });
        res.end(data);
    });
});

// Start the server
server.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}/`);
    
    // Open the HTML page in the default web browser
    exec(`open http://localhost:${PORT}`);
});
