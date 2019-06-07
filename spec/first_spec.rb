require 'spec_helper'

module GmailTest
  describe 'User' do
    it 'opens GMail page' do
      sign_in = SignIn.visit
      expect(sign_in.title?('Sign in')).to eq true
    end
  end
end
