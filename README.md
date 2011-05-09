Welcome to Echobox.
===================

Echobox is a Sinatra web app that accepts messages at any route and echos back all parameters in a json response as well as success => true by default (override as a query string parameter).  Echobox is useful for testing applications that consume and send JSON.

For example, [http://echobox.me/?foo=bar](http://echobox.me/?foo=bar) will return JSON that looks something like this:


	{
		"splat": [
			""
		],
		"foo": "bar",
		"success": true,
		"source": "http://echobox.me/?foo=bar" 
	}    


You can specify a callback for JSONP like this [http://echobox.me/?foo=bar&callback=callback](http://echobox.me/?foo=bar&callback=callback):


	callback({"splat":[""],"callback":"callback","foo":"bar","success":true,"source":"http://echobox.me/?foo=bar&callback=callback"})
