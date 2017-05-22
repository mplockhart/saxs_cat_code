#!/usr/bin/ruby

<<comment

Rows and columns for the algorithm. 
Column D remains the same.

    A  |  B  |  C  |  D
W | 0     0     0     0
X | 0     0     0     1
Y | 0     0     0     2
Z | 0     0     0     3

comment

row_1 = [0, 0, 0, 0]
row_2 = [0, 0, 0, 1]
row_3 = [0, 0, 0, 2]
row_4 = [0, 0, 0, 3]

bin_1 = 0
bin_2 = 1
bin_3 = 0

hash_bins = Hash.new
row_key = 1

final_array = []

until row_4[0] == 3

  bin_1 = 0
  bin_2 = 0
  bin_3 = 0

  row_1[2] = row_2[2] = row_3[2] = row_4[2] = bin_1
  row_1[1] = row_2[1] = row_3[1] = row_4[1] = bin_2
  row_1[0] = row_2[0] = row_3[0] = row_4[0] = bin_3

  until row_4[1] == 3
    bin_1 = 0
    bin_2 = 0
    row_1[2] = row_2[2] = row_3[2] = row_4[2] = bin_1
    row_1[1] = row_2[1] = row_3[1] = row_4[1] = bin_2
    until row_4[2] == 3
      row_1[2] = row_2[2] = row_3[2] = row_4[2] = bin_1
      hash_bins[row_key] = "#{row_1}"
      hash_bins[row_key +1] = "#{row_2}"
      hash_bins[row_key +2] = "#{row_3}"
      hash_bins[row_key +3] = "#{row_4}"
      puts "#{row_1} \n#{row_2} \n#{row_3} \n#{row_4} \n"
      row_key += 4
      bin_1 += 1
    end
    bin_2 += 1
  end
  bin_3 += 1
end

<<hash
each of the rows and columns are required to be added to a hash in order to get something like
Row | Column | Bin
0   |   0    | 0
0   |   1    | 0
0   |   2    | 0
0   |   3    | 0
1   |   0    | 0
1   |   1    | 0
1   |   2    | 0
1   |   3    | 1
2   |   0    | 0
2   |   1    | 0
2   |   2    | 0
2   |   3    | 2
3   |   0    | 0
3   |   1    | 0
3   |   2    | 0
3   |   3    | 3

etc

hash

#puts "Row\t|  Columns"
#puts "-----------------------"
#hash_bins.each do |key, value|
# print "#{key}\t|  #{value}"
#  puts
#end