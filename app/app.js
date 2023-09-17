const express = require('express');
const requestIp = require('request-ip');
const app = express();

// Middleware to get the client's real IP address
app.use(requestIp.mw());

// Define a route to echo the client's IP address
app.get('/echo-ip', (req, res) => {
  const clientIP = req.clientIp; // Get the client's real IP from the middleware
  res.send(`Client's real IP address is: ${clientIP}`);
});

// Start the server
const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
