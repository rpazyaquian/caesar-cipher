def encrypt(string, alphabet, rotation = 13)
  cipher = rotate_alphabet(plain_alphabet, 13)
  translation_map = Hash[plain_alphabet.zip(cipher)]
  encrypted_string = string.map do |char|
    if plain_alphabet.includes(char.downcase)
      translated_char = translation_map[char.downcase]
      translated_char = translated_char.upcase if is_capitalized?(char)
    else
      char
    end
  end.join("")
end
