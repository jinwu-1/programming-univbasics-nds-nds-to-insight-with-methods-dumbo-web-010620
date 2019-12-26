$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movie_index = 0
  total_gross = 0
  while movie_index < director_data[:movies].length do
    total_gross += director_data[:movies][movie_index][:worldwide_grosses]
    movie_index += 1
  end
  total_gross
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
