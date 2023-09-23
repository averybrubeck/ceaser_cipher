require 'pry-byebug'
def ceaser_cipher
 
    puts "Encrypt or Decrypt Password?" 
    user_choice = gets.chomp.to_s.downcase
        
    #binding.pry
    if user_choice == "encrypt" || user_choice == "e"           
    #binding.pry

    puts "Enter Password:"
    pass = gets.chomp 
    
    puts "Enter Encrypt Key:"
    key = gets.chomp.to_i
    
    while key > 26 do 
        puts "Key To Large Re-enter Encrypt Key:"
        key = gets.chomp.to_i
    end
    
    e_pass = pass.each_byte.to_a.map { |c| c + key }
      
    puts e_pass.pack('c*')
   
    #binding.pry

else user_choice == "decrypt" || user_choice == "d"
    
    puts "Enter Decryption Key"
   
    d_key = gets.chomp.to_i
    while d_key > 26
     puts "Enter Decryption Key"
    d_key = gets.chomp.to_i
    end

    puts "Enter Password:"
    pass = gets.chomp
    
    d_pass = pass.each_byte.to_a.map { |c| c - d_key}

    puts d_pass.pack('c*')
    


end
end
ceaser_cipher