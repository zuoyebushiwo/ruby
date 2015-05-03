require 'net/smtp' 

#Senders and Recipients 
from_name = 'junxuezhang' 
from_mail = 'junxuezhang@yeah.net' 
to_name = 'junxuezhang' 
to_mail = 'junxuezhang@yeah.net' 

#Servers and Authentication 
smtp_host   = 'smtp.yeah.net' 
smtp_port   = 25 
smtp_domain = 'yeah.net' 
smtp_user   = 'junxuezhang@yeah.net' 
smtp_pwd    = 'dj82839958' 

#The subject and the message 
t = Time.now 
subj = 'Sending Email with Ruby' 
msg_body = "Check out the instructions on how to send mail using Ruby.\n" 

#The date/time should look something like: Thu, 03 Jan 2006 12:33:22 -0700 
msg_date = t.strftime("%a, %d %b %Y %H:%M:%S +0800") 

#Compose the message for the email 
msg = <<END_OF_MESSAGE 
Date: #{msg_date} 
From: #{from_name} <#{from_mail}> 
To: #{to_name} <#{to_mail}> 
Subject: #{subj} 

#{msg_body}  
END_OF_MESSAGE 

Net::SMTP.start(smtp_host, smtp_port, smtp_domain, smtp_user, smtp_pwd, :plain) do |smtp| 
  smtp.send_message msg, smtp_user, to_mail 
end 