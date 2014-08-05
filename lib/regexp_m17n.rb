module RegexpM17N
  def self.non_empty?(str)
# The test is failing because regular expressions can't handle non-Unicode.
# Solution 1: Convert the string back to UTF-8 and test with regular expression
     str.encode(Encoding::UTF_8) =~ /^.+$/
  end

  def self.non_empty_v2?(str)
# Use the build in function length returns characters (old rubies (<=1.8 would return byte-length))
    str.length > 0
  end

end