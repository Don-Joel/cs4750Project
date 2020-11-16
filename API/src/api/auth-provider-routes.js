const express = require("express");

const router = express.Router();

const authProviderService = require("../services/auth-provider-service");
const Provider = require("../model/user-model");
const {
  generateSalt,
  hash,
  compare
} = require('../services/hashing-service');

// sending login information to database, so post method is used
router.post("/login", (req, res) => {
  let provider = new Provider("test","test","test",req.body.email,hash(req.body.password,generateSalt(10)),"test");
  authProviderService.prototype
    .login(provider)
    .then(users => {
      console.log("logging in");
      console.log(users);
      res.send(users);
    })
    .catch(err => {
      res.status(400).send(err);
    });
});

// sending register information to database, so post method is used
router.post("/register", (req, res) => {
  authProviderService.prototype
    .register(req.body)
    .then(users => {
      res.send(users);
    })
    .catch(err => {
      res.status(400).send(err);
    });
});

module.exports = router;
