import com.intuit.karate.junit5.Karate;

public class TestRunner {
	@Karate.Test
	Karate testRunner() {
		return Karate.run("classpath:features/karatedemo.feature");
		
	}
}
