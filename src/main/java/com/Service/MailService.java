package com.Service;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.Entity.UserEntity;

import jakarta.mail.internet.MimeMessage;

@Service
public class MailService {

    @Autowired
    private JavaMailSender mailSender;

    // 1️⃣ Welcome Mail
    public void sendWelcomeMail(UserEntity user) {
        try {
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");

            helper.setTo(user.getEmail());
            helper.setSubject("Welcome to Internship Portal");

            String path = "src/main/resources/templates/WelcomeMail.html";
            Path p = Paths.get(path);
            String htmlMsg = new String(Files.readAllBytes(p));

            htmlMsg = htmlMsg.replace("${firstName}", user.getFirstName());

            helper.setText(htmlMsg, true);
            mailSender.send(message);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // 2️⃣ OTP Mail
    public void sendOtpMail(String email, String otp) {
        try {
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");

            helper.setTo(email);
            helper.setSubject("Password Reset OTP");

            String path = "src/main/resources/templates/OtpMail.html";
            Path p = Paths.get(path);
            String htmlMsg = new String(Files.readAllBytes(p));

            htmlMsg = htmlMsg.replace("${otp}", otp);

            helper.setText(htmlMsg, true);
            mailSender.send(message);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
