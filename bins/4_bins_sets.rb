#!/usr/bin/ruby


<<comment

[0][0][0][0]
[0][0][0][1]
[0][0][0][2]
[0][0][0][3]
[0][0][0][4]

comment

bin_1 = 0

row_1 = [nil, nil, nil, 0]
row_2 = [nil, nil, nil, 1]
row_3 = [nil, nil, nil, 2]
row_4 = [nil, nil, nil, 3]


until row_4[0] == 3
	
	bin_2 = 0
	bin_3 = 0
	
	row_1[0] = row_2[0] = row_3[0] = row_4[0] = bin_1
	row_1[1] = row_2[1] = row_3[1] = row_4[1] = bin_2
	row_1[2] = row_2[2] = row_3[2] = row_4[2] = bin_3

	until row_4[1] == 3
		
		bin_3 = 0
		
		row_1[1] = row_2[1] = row_3[1] = row_4[1] = bin_2
		row_1[2] = row_2[2] = row_3[2] = row_4[2] = bin_3
		
		until row_4[2] == 3
			
			row_1[2] = row_2[2] = row_3[2] = row_4[2] = bin_3
		
			puts "#{row_1}"
			puts "#{row_2}"
			puts "#{row_3}"
			puts "#{row_4}"
			
			bin_3 += 1
		end
		
		bin_2 += 1
		
	end
	
	bin_1 += 1
	
end
