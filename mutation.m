function mutated_value = mutation(crossed)

for t = 1:40

    for t2 = 1:24
    index = round(rand()*24+0.5);
    
        a = rand();
        if (a<=0.09375)
        bit_val = bitget(crossed(t,:),index:index);
    
            if ( bit_val == 1)
                bit_shift = 0;
            else 
                bit_shift = 1;
            end
        
        mutated_value(t,:) =  bitset(crossed(t,:),index,bit_shift);
        else 
            bit_val2 = bitget(crossed(t,:),index:index);
           mutated_value(t,:) = bitset(crossed(t,:),index,bit_val2);
        end
    end
end

end