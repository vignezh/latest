package com.vic.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.vic.model.RegistrationEmail;
import com.vic.model.UserDetails;
import com.vic.service.RegisterService;
// User sign up controller
@Component
public class RegistrationController {
	@Autowired(required = true)
	RegisterService regser;

	// this method will be referred in the webFlowmembership xml file
	public UserDetails infoFlow() {
		return new UserDetails();
	}

	public String validateDetails(UserDetails userDetails, MessageContext messageContext) {
		// it is used to validate the sign in page
		String status = "success";
		System.out.println("process");
		if (userDetails.getUser_name().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("user_name").defaultText("Username cannot be empty").build());
			status = "failure";
		}
		if (userDetails.getMail_id().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("mail_id").defaultText("E-mail id cannot be empty").build());
			status = "failure";
		}
		if (userDetails.getContact() == null) {
			messageContext.addMessage(new MessageBuilder().error().source("contact")
					.defaultText("Contact number cannot be empty").build());
			status = "failure";
		}
		if (userDetails.getPassword() == null) {
			messageContext.addMessage(
					new MessageBuilder().error().source("password").defaultText("Password cannot be empty").build());
			status = "failure";
		}
		if (userDetails.getCon_password() == null) {
			messageContext.addMessage(new MessageBuilder().error().source("con_password")
					.defaultText("Confirm password must match rightly").build());
			status = "failure";
		}
		if (status.equals("success")) {
			regser.saveOrUpdate(userDetails);
		}

		return status;
	}

	@Autowired
	RegistrationEmail regmail;

	public void sendMail(UserDetails userDetails) {
		
		try {
		String toAddress = userDetails.getMail_id();
		String fromAddress = "vignesh.venky20@gmail.com";
		String subject = "FootBazzar for you";
		String body = "You have successfully gone through our site, keep in touch!!!";
		regmail.readyToSendMail(toAddress, fromAddress, subject, body);
		}catch(Exception e){
			System.out.println(e.getMessage());
			System.out.println("no internet to send email");
		}
	}
}
