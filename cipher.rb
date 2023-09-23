#CLI to run ruby cipher.rb encrypt | decrypt
#STDIN.gets because windows is lame
require 'pry-byebug'

def caesar_cipher(mode)
  if mode == 'encrypt' || mode == 'e'
    puts "Enter Password:"
    pass = STDIN.gets.chomp 
    
    puts "Enter Encrypt Key:"
    key = STDIN.gets.chomp.to_i
    
    while key > 26 do 
      puts "Key Too Large, Re-enter Encrypt Key:"
      key = STDIN.gets.chomp.to_i
    end
    
    e_pass = pass.each_byte.to_a.map { |c| c + key }
      
    new_pass = e_pass.pack('c*')

    puts "Password: #{new_pass} Decrypt Key: #{key}"

  elsif mode == 'decrypt' || mode == 'd'
    puts "Enter Decryption Key"
   
    d_key = STDIN.gets.chomp.to_i
    
    while d_key > 26
      puts "Enter Decryption Key"
      d_key = STDIN.gets.chomp.to_i
    end

    puts "Enter Password:"
    pass = STDIN.gets.chomp
    
    d_pass = pass.each_byte.to_a.map { |c| c - d_key}

    new_pass =  d_pass.pack('c*')
    puts "Decrypted Pasword: #{new_pass}"
  else    
    puts "Invalid input, please try again" 
  end
end

if ARGV.length == 1
    caesar_cipher(ARGV[0].downcase)
  else
    puts "Usage: cipher.rb <encrypt|decrypt>"
end