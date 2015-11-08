#A solution for the Google Code Jam practice problem: A Magic Trick
#Given an input of the 2 ways 16 cards are stacked and the rows where the chosen card is placed,
#provide an output explaining whether trick worked or not, if so print the card


def trick(row1, arr1, arr2, row2)
  "Determine if the first number is in the chosen second row and return the proper response"
  guess = arr1[row1.to_i-1]
  guess1 = arr2[row2.to_i-1].split(' ')
  count=0
  card = 0
  guess.each { |i|
    if guess1.include? i
      count+=1
      card = i
    end
  }
  if count==0
    return "Volunteer cheated!"
  elsif count==1
    return card
  else
    return "Bad magician!"
  end
end

def format(input_array)
  "Format the input in to read the proper variables in the proper order for calling the trick function"
  row1 = input_array[0]
  row2 = input_array[5]
  arr1 = []
  arr2 = []
  i = 1
  while i < 5
    arr1.push(input_array[i].split(' '))
    i+=1
  end
  j = 6
  while j < 11
    arr2.push(input_array[j])
    j+=1
  end
  return trick(row1, arr1, arr2, row2)
end

case_num = 1
answer = []
File.foreach('input.txt').with_index do |line, line_num|
  if line_num==0
  elsif (line_num) % 10 !=0
    answer.push(line.chomp)
  else
    answer.push(line.chomp)
    result = format(answer)
    answer.clear()
    puts "Case ##{case_num}: #{result}"
    case_num+=1
  end
end
