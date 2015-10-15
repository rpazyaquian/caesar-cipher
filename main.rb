require_relative 'caesar.rb'

string = ARGV[0]
plain_alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
rotations = ARGV[1].to_i

puts encrypt(string, plain_alphabet, rotations)
