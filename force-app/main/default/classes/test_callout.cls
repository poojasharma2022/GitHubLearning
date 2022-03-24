@isTest
global class test_callout implements HttpCalloutMock {
    // Implement  this interface method
    global HTTPResponse respond(HTTPRequest request) {
        // Create a fake response
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"name": "testcallout","company":"abc pvt lmt","status":"open","mobile":"201","email":"abc@gmail.com"}');
        response.setStatusCode(200);
        return response; 
    }
    @istest
    public static void mock_callout(){
  
    // Set mock callout class  
    Test.setMock(HttpCalloutMock.class, new test_callout()); 
    // This causes a fake response to be sent
    // from the class that implements HttpCalloutMock. 
    HttpResponse response = rejlead_pooja42.rej('testcallout','abc pvt lmt','open','201','abc@gmail.com');
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