@isTest
public class TemperatureConverterTest {
@isTest
    public static void 	testWarmTemp(){
        Decimal celcius = TemperatureConverter.FahrenheitToCelsius(70);
        System.assertEquals(21.11, celcius);
    }
@isTest
    public static void 	testFreezingTemp(){
        Decimal celcius = TemperatureConverter.FahrenheitToCelsius(32);
        System.assertEquals(0, celcius);
    }
@isTest
    public static void 	testBoilingTemp(){
        Decimal celcius = TemperatureConverter.FahrenheitToCelsius(212);
        System.assertEquals(100, celcius);
    }
@isTest
    public static void 	testNotStuation1(){
        Decimal celcius = TemperatureConverter.FahrenheitToCelsius(212);
        System.assertNotEquals(1000, celcius);
    }
@isTest
    public static void 	testNegativeTemp(){
        Decimal celcius = TemperatureConverter.FahrenheitToCelsius(-10);
        System.assertEquals(-23.33, celcius);
    }
}