# encoding: utf-8
require 'minitest/autorun'
require_relative '../lib/regexp_m17n'

class RegexpTest < MiniTest::Unit::TestCase
  def test_non_empty_string
    Encoding.list.each do |enc|
# Using Ubuntu with ruby 2.1.2p95 make this test break because the convertion from UTF-8 to the following encoding is missing.
# The test is already breaking before calling RegexpM17N.non_empty?
      unless enc == Encoding::ISO_2022_JP or enc == Encoding::ISO_2022_JP_2 or enc == Encoding::UTF_7
        assert(RegexpM17N.non_empty?('.'.encode(enc)))
        assert(RegexpM17N.non_empty_v2?('.'.encode(enc)))
      end
    end
  end
end
