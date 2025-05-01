const fs = require('fs');

// HTML content
const htmlContent = `
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Node.js HTML Page</title>
</head>
<body>
    <h1>Hello from Node.js!</h1>
    <p>This is a dynamically generated HTML page.</p>
</body>
</html>
`;

// Write HTML content to a file
fs.writeFile('index.html', htmlContent, (err) => {
    if (err) throw err;
    console.log('HTML file created successfully!');
});