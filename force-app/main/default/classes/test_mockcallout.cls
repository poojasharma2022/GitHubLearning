@istest
public class test_mockcallout {
        public static void testPostCallout() {
    // Set mock callout class 
    Test.setMock(HttpCalloutMock.class, new test_callout()); 
    // This causes a fake response to be sent
    // from the class that implements HttpCalloutMock. 
    HttpResponse response = rejlead_pooja42.rej('a','b,','c','d','e');
    // Verify that the response received contains fake values
    String contentType = response.getHeader('Content-Type');
    System.assert(contentType == 'application/json');
    String actualValue = response.getBody();
    System.debug(response.getBody());
    String expectedValue = '{"name": "testcallout","company":"abc pvt lmt","status":"open","mobile":"201","email":"abc@gmail.com"}';
    System.assertEquals(actualValue, expectedValue);
    System.assertEquals(200, response.getStatusCode());
}

}