$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  director_index = 0
  total = {}
  while director_index < nds.length do
    director_name = nds[director_index][:name]
    total[director_name] = 0
    movie_index = 0
    while movie_index < nds[director_index][:movie].length
      total[director_name] += nds[director_index][:movie][movie_index][:worldwide_grosses]
      movie_index += 1
    end
    director_index
  end
  total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nil
end
