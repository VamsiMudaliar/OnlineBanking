package com.banking.Email;

import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;

public class sendEmail {

	public  JsonNode sendSimpleMessage( String tomail,String Subject,String msg,String key) throws UnirestException {
		

        HttpResponse<JsonNode> request = Unirest.post("https://api.mailgun.net/v3/" +"vikas.social" + "/messages")
                .basicAuth("api",key)
                .field("from", "OnlineBanking <USER@DigitalBanking.social.COM>")
                .field("to", tomail)
                .field("subject",Subject )
                .field("text", msg)
                .asJson();
        	System.out.println(request.getBody());
            return request.getBody();
    }
		
}
