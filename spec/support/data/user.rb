module GmailTest
  module Data
    class User < Base
      key(:email) { 'oldyew@gmail.com' }
      key(:password) { 'GoldenDragon@1' }
      key(:subject) { 'test email' }
      key(:body) { 'email text' }
    end
  end
end
