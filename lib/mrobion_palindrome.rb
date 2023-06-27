require_relative "mrobion_palindrome/version"

module MrobionPalindrome

    def palindrome?
      processed_content == processed_content.reverse && processed_content.length != 0
    end

    private

      def processed_content
        # 1. scan:
          # 1. scan the string
          # 2. make it an array of only the characters we want
        # 2. join: bring back the array into a string
        self.to_s.scan(/[a-z\d]/i).join.downcase
      end
end

class String
  include MrobionPalindrome
end

class Integer
  include MrobionPalindrome
end
