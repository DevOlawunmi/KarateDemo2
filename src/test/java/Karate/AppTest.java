package Karate;

import static org.junit.Assert.assertTrue;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.Test;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@KarateOptions(
        features = {"src/test/java/features"}
)

public class AppTest
{

}
