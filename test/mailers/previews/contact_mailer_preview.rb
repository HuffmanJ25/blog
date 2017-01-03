# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def contact_email(name="Joel", body="Tada!", email="Huffmanj25@gmail.com")
    @body = body
    mail(to: 'huffmanj25@gmail.com', subject: 'Contact Form')
  end
end
