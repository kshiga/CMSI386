require 'test/unit'
require 'misc.rb'

class String
  def is_permutation_of(other)
    self.split(//).sort == other.split(//).sort
  end
end

class TestUtil < Test::Unit::TestCase

  def test_strip_vowels()
    assert_equal(strip_vowels(""), "");
    assert_equal(strip_vowels("ouT"), "T");
    assert_equal(strip_vowels("rhythMs"), "rhythMs");
	assert_equal(strip_vowels("aeioU"),"");
	assert_equal(strip_vowels("Ae!0Io123U!456aEi!789Ou!"),"!0123!456!789!");
	assert_equal(strip_vowels("a"),"");
	assert_equal(strip_vowels("hEllO dr tOAl"),"hll dr tl");
  end

  def test_scramble()
    ["", "a", "aaaa", "aaba", "abfswegwtewr"].each do |s|
      assert(s.is_permutation_of(scramble(s)))
    end
    assert(!"abc".is_permutation_of(scramble("aab")))

    ["herpderp"].each do |s|
      assert(s.is_permutation_of(scramble(s)))
    end

  end

  def test_powers_of_two()
    assert_equal(powers_of_two(100), [2, 4, 8, 16, 32, 64]);
	assert_equal(powers_of_two(1), []);
	assert_equal(powers_of_two(2), [2]);
    assert_equal(powers_of_two(3), [2]);
	assert_equal(powers_of_two(-100), []);
  end

  def test_powers()
    assert_equal(powers(0,0), []);
    assert_equal(powers(0,1), [0, 1]);
    assert_equal(powers(1,1), [1]);
    assert_equal(powers(1,100), [1]);
    assert_equal(powers(3,100), [3, 9, 27, 81]);
    assert_equal(powers(100, 2), [1]);
	
  end

  def test_interleave()
    assert_equal(interleave([1, 2], [nil, 5, 7, 10]), [1, nil, 2, 5, 7, 10]);
    assert_equal(interleave([1, 2], []), [1, 2]);
    assert_equal(interleave([], [nil, 5, 7, 10]), [nil, 5, 7, 10]);
    assert_equal(interleave([1, 2, 3], ["a", "b", "c"]), [1, "a", 2, "b", 3, "c"]);
    assert_equal(interleave([], []), []);

  end

  def test_stutter()
    assert_equal([1, 1].stutter, [1, 1, 1, 1]);
    assert_equal([].stutter,[]);
	assert_equal([a, b, c, dddd, 1, 2, 3].stutter, [a, a, b, b, c, c, dddd, dddd, 1, 1, 2, 2, 3, 3]);
    assert_equal([abcdefg].stutter,[abcedfg, abcdefg]);
    assert_equal(["a", b, "c", 4].stutter,["a", "a", b, b, "c", "c", 4, 4]);
  end

end
