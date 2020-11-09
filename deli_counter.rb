katz_deli = [] 

def line(katz_deli) 
    if katz_deli.length > 0 
        line_array = katz_deli.each_with_index.map {|x, i| "#{i+1}. #{x}"} 
        puts "The line is currently: #{line_array.join(" ")}"
    else 
       puts "The line is currently empty." 
    end         
end  

def take_a_number(katz_deli, name) 
    place_in_line = katz_deli.length + 1 
    puts "Welcome, #{name}. You are number #{place_in_line} in line." 
    katz_deli << name   
end

def now_serving(katz_deli)
    if katz_deli.length == 0 
        puts "There is nobody waiting to be served!" 
    else 
        puts "Currently serving #{katz_deli.first}." 
        katz_deli.shift
    end          
end     