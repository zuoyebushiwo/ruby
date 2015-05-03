require 'net/smtp'

message = <<MESSAGE_END
From: junxuezhang<junxuezhang@yeah.net>
To: junxuezhang<junxuezhang@yeah.net>
Subject: SMTP e-mail test

This is a test e-mail message.

MESSAGE_END
Net::SMTP.start('smtp.yeah.net',25,'yeah.net','junxuezhang@yeah.net','dj82839958',:login)
end