function fn() {
    var env = karate.env;
    if (!env) {
        env = 'dev';
    }

    var config = {
        env: env,
        myVarName: 'hello karate',
        baseUrl: 'https://gorest.co.in',
        tokenID: 'a1d248a1d1c837bd6e0c74c7fba0e36ea2cf4b38cf23fe6f6d6c23c3e1f9fb8d',
        username: 'test',
        password: 'test'
    }
    if (env == 'dev') {
        // customize
        // e.g. config.foo = 'bar';
        config.username = 'author';
        config.password = 'authorpassword';
    } else if (env == 'e2e') {
        config.username = 'user';
        config.password = 'userpassword';
    } else if (env == 'staging') {
        // Initialize the config for staging
        config.username = 'stagingadmin1';
        config.password = 'stagingwelcome';
        //config._url= 'http://staging.localhost:9898';
        config._url = 'http://localhost:9898';
    } else if (env == 'preprod') {
        // Initialize the config for preprod
        config.username = 'preprodadmin1';
        config.password = 'preprodwelcome';
        config._url = 'http://preprod.localhost:9898';
    } else if (env == 'prod') {
        // Initialize the config for prod
        config.username = 'prodadmin1';
        config.password = 'prodwelcome';
        config._url = 'http://localhost:9898';
    }
    return config;
}