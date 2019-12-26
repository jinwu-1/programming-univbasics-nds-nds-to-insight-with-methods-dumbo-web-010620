$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  index = 0
  total = 0
  while index < director_data[:movies].length
    total += director_data[:movies][index][:worldwide_grosses]
    index += 1
  end
  total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  index = 0
  while index < nds.size do
    director = nds[index]
    result[director[:name]] = gross_for_director(director)
    index += 1
  end
  result
end
