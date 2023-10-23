package features;

import com.intuit.karate.junit5.Karate;

public class TestRunner {


    @Karate.Test
    public Karate CountryTest() {
        return Karate.run("Country").relativeTo(getClass());

    }

    @Karate.Test
    public Karate getAPITest() {
        return Karate.run("getAPI").relativeTo(getClass());

    }

    @Karate.Test
    public Karate postAPITest() {
        return Karate.run("PostAPI").relativeTo(getClass());

    }

    @Karate.Test
    public Karate putAPITest() {
        return Karate.run("PutAPI").relativeTo(getClass());

    }

    @Karate.Test
    public Karate deleteAPITest() {
        return Karate.run("deleteAPI").relativeTo(getClass());

    }

    @Karate.Test
    public Karate headerAPITest() {
        return Karate.run("header").relativeTo(getClass());
    }
    @Karate.Test
    public Karate getAPIWithQueryTest() {
        return Karate.run("getAPIwithQuery").relativeTo(getClass());
    }

    @Karate.Test
    public Karate randomMailAPITest() {
        return Karate.run("randomMail").relativeTo(getClass());
    }

    @Karate.Test
    public Karate userAPITest() {
        return Karate.run("user").relativeTo(getClass());
    }

}
