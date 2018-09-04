class UserMailer < ApplicationMailer
    default from: 'notifications@WRITAPOST.com'
    def thankyou_email
        @user = params[:user]
        @url  = 'http://WRITAPOST.com/login'
        mail(to: @user.email, 
        subject: 'Welcome to WRITAPOST, it is the world greatest site for writing posts') do |format|
            format.html { render 'thankyou_email'}
            format.text { render plain: 'thankyou_email'}
        end
    end
end
