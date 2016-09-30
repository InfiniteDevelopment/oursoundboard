import PerfectLib
import PerfectHTTP
import PerfectHTTPServer
 
// Create HTTP server.
let server = HTTPServer()
 
// Routes and handlers
var routes = Routes()
routes.add(method: .get, uri: "/", handler: {
        request, response in
        response.setHeader(.contentType, value: "text/html")
        response.appendBody(string: "<html><title>Hello, world!</title><body>Hello, world!</body></html>")
        response.completed()
})

routes.add(method: .get, uri: "/vice", handler: {
        request, response in
        response.setHeader(.contentType, value: "text/html")
        response.appendBody(string: "<html><title>vice</title><body>vice</body></html>")
        response.completed()
})

routes.add(method: .get, uri: "/sounds", handler: {
    request, response in
    response.setHeader(.contentType, value: "text/html")
    response.appendBody(string: "sounds")
    response.completed()
})

// Add the routes to the server.
server.addRoutes(routes)
 
// Set a listen port
server.serverPort = 8181
 
do {
    // Launch the server.
    try server.start()
} catch PerfectError.networkError(let err, let msg) {
    print("Network error thrown: \(err) \(msg)")
}
