package user;
import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Order;
public class RunnerTests {

    @Karate.Test
    @Order(1)
    Karate testSingUp() {
        return Karate.run("classpath:user/signup.feature").tags("@SingUp");
    }
    @Karate.Test
    @Order(2)
    Karate testLogin() {
        return Karate.run("classpath:user/login.feature").tags("@Login");
    }
}
