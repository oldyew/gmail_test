require 'spec_helper'

module GmailTest
  describe 'User' do
    it 'opens GMail page' do
      sign_in = GmailTest::SignIn.visit
      # expect(sign_in.title?('Sign in')).to eq true
      user_data = GmailTest::Data::User.new
      # email = user_data.email.to_s
      # password = user_data.password.to_s
      sign_in.email_submit(user_data)
      sign_in.password_submit(user_data)

      email_list = GmailTest::EmailList.new
      email_list.new_email
      email_list.input_to(user_data)
      email_list.input_subject(user_data)
      email_list.input_body(user_data)
      email_list.send_email

      expect(email_list.email_received?('test email')).to eq true
    end
  end
end
