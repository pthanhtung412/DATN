/** @format */

// var createError = require('http-errors');
// var express = require('express');
// var path = require('path');
// var cors = require('cors');
// var helmet = require('helmet');
// const {Sever} = require('socket.io')
// var cookieParser = require('cookie-parser');
// var logger = require('morgan');
// const pgp = require('pg-promise')

// var indexRouter = require('./routes/index');
// var usersRouter = require('./routes/users');
// const port = 5000;

// var app = express();

// //Router

// const server = require('http').createServer(app);
// const db = pgp('postgres://username:@host:port/database')

// // view engine setup
// app.set('views', path.join(__dirname, 'views'));
// app.set('view engine', 'jade');

// app.use(logger('dev'));
// app.use(express.json());
// app.use(express.urlencoded({ extended: false }));
// app.use(cookieParser());
// app.use(express.static(path.join(__dirname, 'public')));

// app.use('/', indexRouter);
// app.use('/users', usersRouter);

// // catch 404 and forward to error handler
// app.use(function(req, res, next) {
//   next(createError(404));
// });

// // error handler
// app.use(function(err, req, res, next) {
//   // set locals, only providing error in development
//   res.locals.message = err.message;
//   res.locals.error = req.app.get('env') === 'development' ? err : {};

//   // render the error page
//   res.status(err.status || 500);
//   res.render('error');
// });

// module.exports = app;

const express = require("express");
const cors = require("cors");
const bodyParser = require("body-parser");
const bcrypt = require("bcrypt");
const port = 5000;
const index = require("./routes/index.js")
const usersRouter = require("./routes/users.js");
const loginRouter = require("./routes/login.js");
const registerRouter = require("./routes/register.js");
const notifRouter = require("./routes/notif.js");
const bangtinRouter = require("./routes/bangtin.js");
const listOfCourtRouter = require("./routes/listOfCourt.js");
const changeAdminInfo = require("./routes/changeAdminInfo.js")
const overView = require("./routes/overView.js")
const CourtDetail = require("./routes/CourtDetail")
const joinYard = require("./routes/joinYard.js")
const saveFrame = require("./routes/saveFrame.js")

const app = express();
app.use(cors());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.use("/", index)
app.use("/users", usersRouter);
app.use("/login", loginRouter);
app.use("/register", registerRouter);
app.use("/notif", notifRouter);
app.use("/bangtin", bangtinRouter);
app.use("/listOfCourt",listOfCourtRouter);
app.use("/changeAdminInfo", changeAdminInfo);
app.use("/overView", overView)
app.use("/CourtDetail", CourtDetail)
app.use("/joinYard", joinYard)
app.use("/saveFrame", saveFrame)

app.listen(port, () => console.log("listening on port " + port));
