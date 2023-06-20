require_relative "mrobion_palindrome/version"

class String

  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    def processed_content
      # 1. scan:
        # 1. scan the string
        # 2. make it an array of only the characters we want
      # 2. join: bring back the array into a string
      self.scan(/[a-z]/i).join.downcase
    end
end
