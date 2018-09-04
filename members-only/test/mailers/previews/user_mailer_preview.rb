# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
def thankyou_email
    UserMailer.with(user: User.first).thankyou_email
end
end
