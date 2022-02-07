require 'csv'
puts "1(新規でメモを作成)、2(既存のメモを編集する)"
memo_type = gets.to_i
if memo_type == 1
  puts "拡張子を除いたファイルを入力してください。"
  file_name = gets.chomp + ".csv"
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + Dを押してください"
  memo_type = STDIN.read
  
  CSV.open(file_name,'w') do |memo|
    memo << ["#{memo_type}"]
  end
elsif memo_type == 2
  puts "編集したいファイルを選んでください"
  file_name = gets.chomp + ".csv"
  puts "編集内容を入力してください。"
  puts "完了したらCtrl + Dを押してください"
  memo_type = STDIN.read

 CSV.open(file_name, 'a') do |memo|
   memo << ["#{memo_type}"]
 end
 
end
 