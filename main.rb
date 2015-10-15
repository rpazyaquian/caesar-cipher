require_relative 'caesar.rb'

string = ARGV[0]
plain_alphabet = ("a".."z").to_a
rotations = ARGV[1].nil? ? 13 : ARGV[1].to_i
puts rotations

puts encrypt(string, plain_alphabet, rotations)
