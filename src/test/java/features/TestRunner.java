package features;

import com.intuit.karate.junit5.Karate;

public class TestRunner {

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
}
