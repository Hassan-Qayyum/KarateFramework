function fn() {

  var config = { DEFAULT: 'It will be executed everytime by default'}
  config.ENV = Java.type('utilities.ConfigReader').getEnv(); // Reading java class ( ConfigReader ) method getEnv();

// callSingle: Whenever we want to execute a scenario or feature only once then we use callSingle hook.
    var token = karate.callSingle(' ../tests/userDetailsAuthentication3.feature')
    config.AUTH_TOKEN = token.authToken

// Configuring the users api end points
    config.GET_USERS = 'api/users'

  // Environment specific configurations
  if(config.ENV == 'int') {
    config.BASE_URL = "https://reqres.in/"
  }
  else if(config.ENV == 'pqa') {
    config.BASE_URL = "https://reqres.in/"
  }
  return config;
}
