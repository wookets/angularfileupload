/**
 * Module dependencies.
 */var express = require("express"), routes = require("./routes"), app = module.exports = express.createServer();

app.configure(function() {
  app.set("views", __dirname + "/views");
  app.set("view engine", "jade");
  app.use(express.bodyParser());
  app.use(express.methodOverride());
  app.use(app.router);
  app.use(express.static(__dirname + "/public"));
});

app.configure("development", function() {
  app.use(express.errorHandler({
    dumpExceptions: !0,
    showStack: !0
  }));
});

app.configure("production", function() {
  app.use(express.errorHandler());
});

app.all("/upload", function(a, b) {
  console.log(a.body);
  console.log(a.files);
  b.send(a.files.files);
});

app.listen(3e3);

console.log("Express server listening on port %d in %s mode", app.address().port, app.settings.env);