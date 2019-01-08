package jMail;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
import java.util.*;
/**
 *
 * @author Aman
 */
public class Mail {
private String to;
private String from;
private String message;
private String subject;
private String smtpServ;
public int sendMail() throws AddressException, MessagingException
            {
            Properties props = System.getProperties();
              props.put("mail.transport.protocol", "smtp" );
              props.put("mail.smtp.starttls.enable","true" );
              props.put("mail.smtp.host", "smtp.gmail.com");
              props.put("mail.smtp.auth", "true" );
              props.put("mail.smtp.port", "587");
              Authenticator auth = new SMTPAuthenticator();
              Session session = Session.getInstance(props, auth);
              Message msg = new MimeMessage(session);
              msg.setFrom(new InternetAddress(getFrom()));
              msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(getTo(), false));
              msg.setSubject(getSubject());
              msg.setText(getMessage());
              msg.setHeader("MyMail", "Mr.XYZ");
              msg.setSentDate(new Date());
              Transport.send(msg);
              System.out.println("Message sent to"+getTo());
              return 0;
            }

private class SMTPAuthenticator extends javax.mail.Authenticator {
        @Override
        public PasswordAuthentication getPasswordAuthentication() {
            String username = "YOUR_EMAIL_ID";           // specify your email id here (sender's email id)
            String password = "YOUR_PASSWORD";                                      // specify your password here
            return new PasswordAuthentication(username, password);
        }
  }

    /**
     * @return the to
     */
    public String getTo() {
        return to;
    }

    /**
     * @param to the to to set
     */
    public void setTo(String to) {
        this.to = to;
    }

    /**
     * @return the from
     */
    public String getFrom() {
        return from;
    }

    /**
     * @param from the from to set
     */
    public void setFrom(String from) {
        this.from = from;
    }

    /**
     * @return the message
     */
    public String getMessage() {
        return message;
    }

    /**
     * @param message the message to set
     */
    public void setMessage(String message) {
        this.message = message;
    }

    /**
     * @return the subject
     */
    public String getSubject() {
        return subject;
    }

    /**
     * @param subject the subject to set
     */
    public void setSubject(String subject) {
        this.subject = subject;
    }

    /**
     * @return the smtpServ
     */
    public String getSmtpServ() {
        return smtpServ;
    }

    /**
     * @param smtpServ the smtpServ to set
     */
    public void setSmtpServ(String smtpServ) {
        this.smtpServ = smtpServ;
    }
}
