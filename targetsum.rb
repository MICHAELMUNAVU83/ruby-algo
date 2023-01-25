def target_sum(array, target)
    
    # Big O: O(n^2)
    array.each_with_index do |num, idx|
        
        # puts "num: #{num} idx: #{idx}"
        array.each_with_index do |num2, idx2|
            # puts "num: #{num} idx: #{idx} num2: #{num2} idx2: #{idx2}"
         
            if num + num2 == target && idx != idx2
                # puts "num: #{num} idx: #{idx} num2: #{num2} idx2: #{idx2}"
                return [idx, idx2 ]
                
            end

            # if you want the duplicate only
            # if num + num2 == target && idx == idx2
              
            #     return [idx]
                
            # end

        end
    end
    
    



end

puts target_sum([1, 2, 3, 4, 5], 8) 