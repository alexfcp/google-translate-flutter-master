const http = require('http');
var message = "";
const server = http.createServer((request, response) => {
	request.on('data', chunk => {
		newMessage = chunk.toString();
		console.log("Client Message: " + newMessage);
		if(newMessage != "?")
		{
			message += newMessage.toString() + "\n";
		}
		console.log("Sending back: " + message);
		response.end(message);
	});
});
server.listen(3000);