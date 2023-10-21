//function fn() {
//var env = karate.env; // get system property 'karate.env' karate.log('karate.env system property was:', env);
//if (!env) {
//env = 'dev';
//}
//
//var config = {
//env: env,
//myVarName: 'hello karate',
//baseUrl: 'https://gorest.co.in',
//tokenID: 'a1d248a1d1c837bd6e0c74c7fba0e36ea2cf4b38cf23fe6f6d6c23c3e1f9fb8d'
//}
//
//if (env == 'dev') {
//// customize
//// e.g. config.foo = 'bar';
//} else if (env == 'e2e') {
//// customize
//}
//return config;
//}