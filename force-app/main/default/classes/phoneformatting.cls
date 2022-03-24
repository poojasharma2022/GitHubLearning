public class phoneformatting {

    public static String formatphonenumber(String cphone) {
	
      		Pattern nonalpha = Pattern.compile('[^0-9]');
        	Matcher matcher = nonalpha.matcher(cphone);
        	string fphone = matcher.replaceAll(''); 
       		System.debug('@@@'+fphone);
				if (fphone.length() == 10) {
           			 fphone = formatphonenum(fphone);
						return fphone;
						}
				else {
					return cphone;
					}
    		}

			static String formatphonenum (String s) {
			s = '(' + s.substring(0, 3) + ') ' + s.substring(3, 6) + '-' + s.substring(6);
			return s;
			}

}