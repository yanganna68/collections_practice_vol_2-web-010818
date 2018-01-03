# your code goes here
def begins_with_r(a)
  a.each{|i| return false if i[0] != 'r'}
  true
end

def contain_a(a)
  a.select{|i| i.include?('a')}
end

def first_wa(a)
  a.each{|d| return d if d[0..1] == 'wa'}
end

def remove_non_strings(a)
  a.select{|d| d.is_a?(String)}
end

def count_elements(a)
  b = a.uniq
  b.map{|n| n[:count] = a.count(n)}
  b
end

def merge_data(keys, data)
  new_arr = []

    keys.each do |hash|
      new_hash = {}
      hash.each do |key , val|
        new_hash[key] = val
        data[0][val].each do |key2, val2|
             new_hash[key2] = val2
        end
      end
      new_arr << new_hash
    end
    new_arr
end

def find_cool(array)
  new_arr = []
  array.each do |hash|
    if hash[:temperature] == "cool"
      new_arr << hash
    end
  end
  new_arr
end

def organize_schools(hash)
  new_hash = {}

  hash.each do |key, val|
    if new_hash[val[:location]] == nil
      new_hash[val[:location]] = []
    end
  end
  new_hash.each do |key, val|
    hash.each do |key2, val2|
      if key == val2[:location]
        val << key2
      end
    end
  end
  new_hash
end
