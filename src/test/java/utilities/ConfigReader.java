package utilities;

import org.apache.commons.lang3.StringUtils;

public class ConfigReader {

    public static String getEnv() {
        String testEnv = System.getenv("env"); // This line of code is reading value of "env" from the variable environment file (~/.zshrc)
        return StringUtils.isEmpty(testEnv) ? "pqa" : testEnv.toLowerCase(); // This line of code is checking If "env" is empty then return "pqa" else return "testEnv" after converting it to lower case
    }

    public static String getCustomerName() {
        String customerName = System.getenv("customerName"); // This line of code is reading value of "customerName" from the variable environment file (~/.zshrc)
        return StringUtils.isEmpty(customerName) ? "BC" : customerName.toUpperCase(); // This line of code is checking If "customerName" is empty then return "BC" else return "customerName" after converting it to upper case
    }

    public static String getCreditCardName() {
        String ccName = System.getenv("ccName"); // This line of code is reading value of "ccName" from the variable environment file (~/.zshrc)
        return StringUtils.isEmpty(ccName) ? "AMEX" : ccName.toUpperCase(); // This line of code is checking If "ccName" is empty then return "AMEX" else return "ccName" after converting it to upper case
    }

    public static String getGiftCardType() {
        String giftCardType = System.getenv("giftCardType"); // This line of code is reading value of "giftCardType" from the variable environment file (~/.zshrc)
        return StringUtils.isEmpty(giftCardType) ? "token" : giftCardType.toLowerCase(); // This line of code is checking If "giftCardType" is empty then return "token" else return "giftCardType" after converting it to lower case
    }

    public static String getGiftCardChannelName() {
        String giftCardChannelName = System.getenv("giftCardChannelName"); // This line of code is reading value of "giftCardChannelName" from the variable environment file (~/.zshrc)
        return StringUtils.isEmpty(giftCardChannelName) ? "STORE" : giftCardChannelName.toUpperCase(); // // This line of code is checking If "giftCardChannelName" is empty then return "STORE" else return "giftCardChannelName" after converting it to lower case
    }

}