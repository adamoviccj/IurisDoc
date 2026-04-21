package cbr;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"cbr", "controllers", "model"})
public class CbrServerApplication {

    static {
        // Force isključivanje bilo kakvog Spring logovanja pre starta
        System.setProperty("org.springframework.boot.logging.LoggingSystem", "none");
    }

    public static void main(String[] args) {
        SpringApplication app = new SpringApplication(CbrServerApplication.class);
        app.run(args);
    }
}