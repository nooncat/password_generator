class PasswordGenerator
  WOVELS = ['a', 'e', 'i', 'o', 'u'].freeze
  CONSONANTS = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm',
              'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z'].freeze

  def generate(strength = 8)
    is_vowel = rand < 0.5 ? true : false

    ("").tap do |p|
      strength.times do
        p <<= is_vowel ? WOVELS.sample : CONSONANTS.sample
        is_vowel = !is_vowel
      end
      p[i = rand(strength)] = p[i].upcase
    end
  end
end

