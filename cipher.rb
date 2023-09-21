def ceaser_cipher
    #get input and key
    puts "Enter Password:"
    pass = gets.chomp 
    puts "Enter Encrypt Key:"
    key = gets.chomp.to_i
    while key > 26 do 
        puts "Key To Large Re-enter Encrypt Key:"
        key = gets.chomp.to_i
    end
    #convert input to numbers

    #add key to numbers
    #convert back to string
    #log converted string back to console
end

ceaser_cipher