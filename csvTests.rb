require 'csv'
csv = CSV.read('csv_file.csv', :encoding => 'windows-1251:utf-8')

hash = {}

csv.first.each_with_index do |item, index|
  hash[item.to_sym] = csv.last[index]
end

hash.each do |key, value|
  p key

end

