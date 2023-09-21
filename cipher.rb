def ceaser_cipher
    #get input and key
    puts "Enter Password:"
    pass = gets.chomp.to_s 
    puts "Enter Encrypt Key:"
    key = gets.chomp.to_i
    while key > 26 do 
        puts "Key To Large Re-enter Encrypt Key:"
        key = gets.chomp.to_i
    end
    #convert input to numbers
    new_pass = pass.each_byte.to_a
    #add key to numbers
    key_pass = new_pass.map { |c| c + key }
    
    #convert back to string
    conv_pass = key_pass.pack('c*')
    #log converted string back to console
    puts conv_pass
end

ceaser_cipher