class TestMailer < ApplicationMailer
  default from: "brian@railscoder.com"

  def hello
    mail(
      subject: "Hello from Postmark",
      to: "brian@railscoder.com",
      from: "brian@railscoder.com",
      html_body: "<strong>Hello</strong> dear Postmark user.",
      track_opens: "true",
      message_stream: "outbound")
  end
end
