module GmailTest
  module Data
    class User < Base

      # Specify default data for each key inside block

      key(:email) {  }
        key(:password) { Defaults.translate :password }

    end
  end
end
