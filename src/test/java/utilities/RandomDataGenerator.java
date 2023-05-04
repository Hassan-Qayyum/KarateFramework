package utilities;
import java.util.Random;
import com.github.curiousoddman.rgxgen.RgxGen;

public class RandomDataGenerator {
    public static String getRandomRegexId(String aRegex) {
        RgxGen rgxGen = new RgxGen(aRegex);                     // Create generator
        String randomRegexId = rgxGen.generate(); // Generate new random value
        return randomRegexId;
    }
    public static String getRandomString(int length) {
        String randomString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "abcdefghijklmnopqrstuvxyz" + "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            int index = (int)(randomString.length() * Math.random());
            sb.append(randomString.charAt(index));
        }
        return sb.toString();
    }
    public static int getRandomNumber ( int lowerBoundary, int upperBoundary) {

        //Generate random int value from lowerBoundary (e.g. 50 ) to upperBoundary (e.g. 100)
        int random_int = (int)Math.floor(Math.random()*(upperBoundary-lowerBoundary+1)+lowerBoundary);
        return random_int;
    }

    public static Boolean getRandomBoolean(){
        Random rd = new Random(); // creating Random object
        return rd.nextBoolean(); // displaying a random boolean
    }
}