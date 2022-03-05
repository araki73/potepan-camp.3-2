require "csv"

puts "\nさあ、これからジャンケンの試合をはじめるよ！\n（選択肢の数字を入力してください）\n\n"

#仕切り直しループ
loop{
  $user_score = 0
  $partner_score = 0

  puts "じゃん、っけん..！\n----------------------------------------------------\nどれを出す？\n1:\sグー\n2:\sチョキ\n3:\sパー\n(98373984753639713473948579385369584375938457:戦わない)\n----------------------------------------------------"
  user_poi = gets.to_i
  puts "----------------------------------------------------\n\n..ポイっ！\n\n"

  #あいこループ  
  loop{
    case user_poi 
    when 1
      puts "あなた:\sグー！"
    when 2
      puts "あなた:\sチョキ！"
    when 3
      puts "あなた:\sパー！"
    when 98373984753639713473948579385369584375938457
      puts "ってださないんかーい！\n\nじゃあ代わりに”はるみ”さん呼んできてよ。\sつづく\n----------------------------------------------------"
      exit
    when 863
      puts "あなた:\s待ってまって！..ストップストップ！！\nあなた:\sはるみさん、ちょっと１回だけ変わってもらえませんか？\n\n\s相手\s:\s.....ちょっ、、まッ..！！\nはるみ:\sグゥーググゥグーグー！グゥーググゥグーグー！グゥーググゥグーグーグッ..KOOOOOOOOOOOOOO!!!!!!\n\n\s相手\s: ハァ、はぁ......だ、打撃。。\n\n全滅しました。\sK.O.\n----------------------------------------------------"
      exit
    else
      puts "\nという相手をよそに、あなたは試合を放棄しました。\sEND\n\n----------------------------------------------------"
      exit
    end
  
    #相手側
    partner_poi = rand(1..3)
    case partner_poi
    when 1
      puts "\s相手\s:\sグー！"
    when 2
      puts "\s相手\s:\sチョキ！"
    when 3
      puts "\s相手\s:\sパー！"
    end
  
    #結果
    if user_poi == partner_poi
      puts "\s(あいこ！)\n\nあ〜いこで...\n----------------------------------------------------\nどれを出す？\n1:\sグー\n2:\sチョキ\n3:\sパー\n(98373984753639713473948579385369584375938457:戦わない)\n----------------------------------------------------"
      user_poi = gets.to_i
      puts "----------------------------------------------------\n\n..しょっ！\n\n"
    elsif user_poi == 1 && partner_poi == 2
      puts "(あなたの勝ち！)"
      $user_score = 1
      $partner_score = 0
      break
    elsif user_poi == 1 && partner_poi == 3
      puts "(あなたの負け！)"
      $user_score = 0
      $partner_score = 1
      break
    elsif user_poi == 2 && partner_poi == 1
      puts "(あなたの負け！)"
      $user_score = 0
      $partner_score = 1
      break
    elsif  user_poi == 2 && partner_poi == 3
      puts "(あなたの勝ち！)"
      $user_score = 1
      $partner_score = 0
      break
    elsif  user_poi == 3 && partner_poi == 1
      puts "(あなたの勝ち！)"
      $user_score = 1
      $partner_score = 0
      break
    elsif  user_poi == 3 && partner_poi == 2
      puts "(あなたの負け！)"
      $user_score = 0
      $partner_score = 1
      break
    end
  }

  #あっち向いてホイ
  puts "\nあっち向いて〜...\n----------------------------------------------------\nどうする？\n1:\s上\s↑\n2:\s下\s↓\n3:\s右\s→\n4:\s左\s←\n----------------------------------------------------"
  user_hoi = gets.to_i
  puts "----------------------------------------------------\nほいっ！！\n\n"
  case user_hoi
  when 1
    puts "あなた:\s上！"
  when 2
    puts "あなた:\s下！"
  when 3
    puts "あなた:\s右！"
  when 4
    puts "あなた:\s左！"
  when 863
    puts "召喚獣はるみ:\sクォオオオーーーー！！！\n\n...トラウマふたたび。\sEND\n----------------------------------------------------"
    exit
  else
    puts "\nその一瞬、あなたは相手を右ストレートで沈めました。\sEND\n\n----------------------------------------------------"
    exit
  end
  
  #相手側
  partner_hoi = rand(1..5)
  case partner_hoi
  when 1
    puts "\s相手\s:\s上！"
  when 2
    puts "\s相手\s:\s下！"
  when 3
    puts "\s相手\s:\s右！"
  when 4
    puts "\s相手\s:\s左！"
  when 5
    puts "\s相手\s:\s...や、奴がきたっッ！！\n\nはるみ\s:\sクォオオオーーーー！\nあなた\s:\s！！！...え..ちょっと、はるみさん！！？\n\n----------------------------------------------------\n猛獣が現れました。皆さん直ちに避難してください。\sEND\n----------------------------------------------------"
    exit
  end

  #結果
  if user_hoi != partner_hoi
    puts "\n(仕切り直し！)"
  end

  if user_hoi == partner_hoi
    break
  end
}

#勝敗
if $user_score == 1
  puts "\nおめでとう！この試合は、あなたの勝ちです！"
elsif $partner_score == 1
  puts "\nざんねん！この試合は、あなたの負けです！"
end
