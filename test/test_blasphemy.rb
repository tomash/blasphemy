require 'helper'

class TestBlasphemy < Test::Unit::TestCase
  def setup
    @tabula = Faker::TabulaIpsum.new
  end

  def test_one_word_tabula_ipsum
  #  "TabulaIpsum with one word will generate text of this one word"
    @tabula.wordlist = ["foo"]
    assert_equal(["foo"], @tabula.words(1))
    assert_match(/foo/i, @tabula.sentence)
  end

  def test_five_word_tabula_ipsum
    @tabula.wordlist = ["foo","foo","foo","foo","foo"]
    assert(@tabula.sentence.scan("foo").size > 3)
  end
end
