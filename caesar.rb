def is_capitalized?(char)
  char.downcase != char
end

def rotate_alphabet(alphabet, rotation)
  alphabet.rotate(rotation)
end

def encrypt(string, alphabet, rotation = 13)
  cipher = rotate_alphabet(plain_alphabet, rotation)
  translation_map = Hash[plain_alphabet.zip(cipher)]
  encrypted_string = string.split("").map do |char|
    if plain_alphabet.include?(char.downcase)
      translated_char = translation_map[char.downcase]
      translated_char = is_capitalized?(char) ? translated_char.upcase : translated_char
    else
      char
    end
  end
  encrypted_string.join("")
end
