# frozen_string_literal: true

# Author: Martinique Dolce
# Course: Flatiron School 2020, November 9 - 20201, April 2021
# Contact: me@martidolce.com | https://modis.martidolce.com

def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort! { |x, y| y <=> x }
end

def sort_array_char_count(array)
  sort_array_asc(array).sort do |left, right|
    left.length <=> right.length
  end
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

def reverse_array(array)
  array.reverse!
end

def kesha_maker(array)
  array.each do |swap|
    swap[2] = '$'
  end
end

def find_a(array)
  array.select { |word| word.start_with?('a') }
end

def sum_array(array)
  array.inject(0) { |sum, x| sum + x }
end

def add_s(array)
  str = 's'
  array.collect do |word|
    if array[1] == word
      word
    else
      word + str
    end
  end
end
