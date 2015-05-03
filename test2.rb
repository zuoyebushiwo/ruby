# encoding: utf-8
require "net/smtp"   
str ='啊啊';
#puts str
def sendemail(subject,content,to=nil)   
  from = "junxuezhang@yeah.net"  
  to = ["junxuezhang@yeah.net"] if to.nil?   
  sendmessage = "Subject: "+subject +"\n\n"+content.force_encoding("UTF-8")   
  
  #参数含义为：'your.smtp.server', 25, 'mail.from.domain','Your Account', 'Your Password', AuthType
  
  smtp = Net::SMTP.start('smtp.yeah.net',25,'yeah.net','junxuezhang@yeah.net','dj82839958',:login)   
  smtp.send_message sendmessage,from,to
  smtp.finish   
end  

sendemail("aaaa",str,nil) 
puts("--send ok ----");