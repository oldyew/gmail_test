require 'spec_helper'

module GmailTest
  describe 'Send Email' do
    let(:user) { GmailTest::Data::User.new }
    let(:site) { Site.new }

    it 'to_myself' do
      signin_page = SignIn.visit

      signin_page.authenticate(user)

      expect(GmailTest::Main.new.title?(search_data.wikipedia_result)).to eq true
    end
  end
end
