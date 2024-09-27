puts 'Digite a palavra que deseja cifrar: '
input_string = gets.chomp

puts 'Digite o fator de deslocamento: '
shift_factor = gets.chomp.to_i

def caesar_cipher(string, shift)
  encrypted_string = ''

  string.each_char do |char|
    if char.match(/[a-zA-Z]/)
      base = char.ord < 91 ? 65 : 97
      encrypted_char = ((char.ord - base + shift) % 26 + base).chr
      encrypted_string += encrypted_char
    else
      encrypted_string += char
    end
  end

  encrypted_string
end

puts "String cifrada: #{caesar_cipher(input_string, shift_factor)}"
