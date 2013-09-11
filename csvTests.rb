require 'csv'
csv = CSV.read('csv_file.csv', :encoding => 'windows-1251:utf-8')

hash = {}

csv.first.each_with_index do |item, index|
  hash[item.to_sym] = csv.last[index]
end

p hash

leandro = hash.inject([[], []]) do |result, elem|
  [result[0] << elem[0], result[1] << elem[1]]
end

CSV.open("test.csv", "wb") do |csv|
  leandro.each {|x| csv << x}
end


array.each do |x|
  puts x
end