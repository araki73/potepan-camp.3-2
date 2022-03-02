require "csv"
 
puts "1.新規メモを作成 2.既存メモを編集する"
puts "( 1 か 2 を出力してください )"

memo_type = gets.to_i

if memo_type == 1
  CSV.open('New.csv','w') do |csv|
    puts "新規メモのファイル名を入力してください（拡張子は除く）"
    Newfile_name = gets.chomp
    File.rename("New.csv", "#{Newfile_name}.csv")

    puts "-------------------------------------------"
    puts "これで準備完了です。"
    puts "メモしたい内容を記入してください。"
    puts "入力完了後にCtrl + Dを押すと、保存して終了します。"
    puts "-------------------------------------------"

    Memo = STDIN.read
    csv << [ Memo ]
  end

elsif memo_type == 2
  puts "既存メモのファイル名を入力してください。（拡張子は除く）"
  Existing_filename = gets.chomp
  data = CSV.read("#{Existing_filename}.csv", headers: true)
  puts "-------------------------------------------"
  puts "ー既存メモの内容ー"
  puts ""
  puts data
  CSV.open("#{Existing_filename}.csv",'a') do |csv|

    puts "-------------------------------------------"
    puts "準備完了です。"
    puts "メモしたい内容を下記に記入してください。追記します。"
    puts "入力完了後にCtrl + Dを押すと、保存して終了します。"
    puts "-------------------------------------------"

    Memo = STDIN.read
    csv << [ Memo ]  
  end

else 
  puts "-------------------------------------------"
  puts "正常に認識できませんでした。1か2を出力してください"
  puts "-------------------------------------------"
end