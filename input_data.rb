#!/usr/bin/env ruby

<<comments
This is the bare bones, fully manual copy of the program. This is finished for the thesis with no user inputs.
start date: 12/05/17
comments


# all methods
def bins_3
  bin_1 = 0

  row_1 = [nil, nil, nil, 0]
  row_2 = [nil, nil, nil, 1]
  row_3 = [nil, nil, nil, 2]

  until row_3[0] == 2

    bin_2 = 0
    bin_3 = 0

    row_1[0] = row_2[0] = row_3[0] = bin_1
    row_1[1] = row_2[1] = row_3[1] = bin_2
    row_1[2] = row_2[2] = row_3[2] = bin_3

    until row_3[1] == 2

      bin_3 = 0

      row_1[1] = row_2[1] = row_3[1] = bin_2
      row_1[2] = row_2[2] = row_3[2] = bin_3

      until row_3[2] == 2

        row_1[2] = row_2[2] = row_3[2] = bin_3

        puts "#{row_1}"
        puts "#{row_2}"
        puts "#{row_3}"

        bin_3 += 1
      end

      bin_2 += 1

    end

    bin_1 += 1

  end
end

def bins_4
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
end

def bins_5
  bin_1 = 0

  row_1 = [nil, nil, nil, 0]
  row_2 = [nil, nil, nil, 1]
  row_3 = [nil, nil, nil, 2]
  row_4 = [nil, nil, nil, 3]
  row_5 = [nil, nil, nil, 4]

  until row_5[0] == 4

    bin_2 = 0
    bin_3 = 0

    row_1[0] = row_2[0] = row_3[0] = row_4[0] = row_5[0] = bin_1
    row_1[1] = row_2[1] = row_3[1] = row_4[1] = row_5[1] = bin_2
    row_1[2] = row_2[2] = row_3[2] = row_4[2] = row_5[2] = bin_3

    until row_5[1] == 4

      bin_3 = 0

      row_1[1] = row_2[1] = row_3[1] = row_4[1] = row_5[1] = bin_2
      row_1[2] = row_2[2] = row_3[2] = row_4[2] = row_5[2] = bin_3

      until row_5[2] == 4

        row_1[2] = row_2[2] = row_3[2] = row_4[2] = row_5[2] = bin_3

        puts "#{row_1}"
        puts "#{row_2}"
        puts "#{row_3}"
        puts "#{row_4}"
        puts "#{row_5}"

        bin_3 += 1
      end

      bin_2 += 1
    end

    bin_1 += 1
  end
end

# input data file
#scatter_file = File.open('file.file', 'w+')

# input Dmax from real space
################
dmax = 'value' #
################

# input Rg from real space
################
rg = 'value'   #
################

# here you need to specify how many Shannon channel you require.
# the number is 3, 4, or 5. 5 should be fine enough sampling in order to achieve a chi^2 close to 1

####################
number_of_bins = 5 #
####################

# here the name of the files need to be put between the parenthesis
if number_of_bins == 3
  bins_3()

elsif number_of_bins == 4
  bins_4()

elsif number_of_bins == 5
  bins_5()

end

