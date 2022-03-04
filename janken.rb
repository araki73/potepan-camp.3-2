require "csv"

puts ""
puts "さあ、これからジャンケンの試合をはじめるよ！"
puts "（選択肢の数字を入力してください）"

#仕切り直しループ
loop{
  $user_score = 0
  $partner_score = 0

  puts ""
  puts "じゃん、っけん..！"
  puts "----------------------------------------------------"
  puts "どれを出す？"
  puts "1: グー"
  puts "2: チョキ"
  puts "3: パー"
  puts "(98373984753639713473948579385369584375938457:戦わない)"
  puts "----------------------------------------------------"
  user_poi = gets.to_i
  puts "----------------------------------------------------"
  puts ""
  puts "..ポイっ！"
  puts "" 

  #あいこループ  
  loop{
    case user_poi 
    when 1
      puts "あなた: グー！"
    when 2
      puts "あなた: チョキ！"
    when 3
      puts "あなた: パー！"
    when 98373984753639713473948579385369584375938457
      puts "ってださないんかーい！"
      puts ""
      puts "じゃあ代わりに”はるみ”さん呼んできてよ。 つづく"
      puts "----------------------------------------------------"
      exit
    when 863
      puts "あなた: 待ってまって！..ストップストップ！！"
      puts "あなた: はるみさん、ちょっと１回だけ変わってもらえませんか？"
      puts ""
      puts " 相手 : .....ちょっ、、まッ..！！"
      puts "はるみ: グゥーググゥグーグー！グゥーググゥグーグー！グゥーググゥグーグーグッ..KOOOOOOOOOOOOOO!!!!!!"
      puts ""
      puts " 相手 : ハァ、はぁ......だ、打撃。。"
      puts ""
      puts "全滅しました。 K.O." 
      puts "----------------------------------------------------"
      exit
    else
      puts ""
      puts "という相手をよそに、あなたは試合を放棄しました。 END"
      puts ""
      puts "----------------------------------------------------"
      exit
    end
  
    #相手側
    partner_poi = rand(1..3)
    case partner_poi
    when 1
      puts " 相手 : グー！"
    when 2
      puts " 相手 : チョキ！"
    when 3
      puts " 相手 : パー！"
    end
  
    #結果
    if user_poi == partner_poi
      puts " (あいこ！)"
      puts ""
      puts "あ〜いこで..."
      puts "----------------------------------------------------"
      puts "どれを出す？"
      puts "1: グー"
      puts "2: チョキ"
      puts "3: パー"
      puts "(98373984753639713473948579385369584375938457:戦わない)"
      puts "----------------------------------------------------"
      user_poi = gets.to_i
      puts "----------------------------------------------------"
      puts ""
      puts "..しょっ！"
      puts ""
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
  puts ""
  puts "あっち向いて〜..."
  puts "----------------------------------------------------"
  puts "どうする？"
  puts "1: 上 ↑"
  puts "2: 下 ↓"
  puts "3: 右 →"
  puts "4: 左 ←"
  puts "----------------------------------------------------"
  user_hoi = gets.to_i
  puts "----------------------------------------------------"
  puts "..ほいっ！！"
  puts ""
  case user_hoi
  when 1
    puts "あなた: 上！"
  when 2
    puts "あなた: 下！"
  when 3
    puts "あなた: 右！"
  when 4
    puts "あなた: 左！"
  when 863
    puts "召喚獣はるみ: クォオオオーーーー！！！"
    puts ""
    puts "...トラウマふたたび。 END" 
    puts "----------------------------------------------------"
    exit
  else
    puts ""
    puts "その一瞬、あなたは相手を右ストレートで沈めました。 END"
    puts ""
    puts "----------------------------------------------------"
    exit
  end
  
  #相手側
  partner_hoi = rand(1..5)
  case partner_hoi
  when 1
    puts " 相手 : 上！"
  when 2
    puts " 相手 : 下！"
  when 3
    puts " 相手 : 右！"
  when 4
    puts " 相手 : 左！"
  when 5
    puts " 相手 : ...や、奴がきたっッ！！"
    puts ""
    puts "はるみ : クォオオオーーーー！"
    puts "あなた : ！！！...え..ちょっと、はるみさん！！？"
    puts ""
    puts "----------------------------------------------------"
    puts "猛獣が現れました。皆さん直ちに避難してください。 END"
    puts "----------------------------------------------------"
    exit
  end

  #結果
  puts ""
  if user_hoi != partner_hoi
    puts "(仕切り直し！)"
  end

  if user_hoi == partner_hoi
    break
  end
}

#勝敗
if $user_score == 1
  puts "おめでとう！この試合は、あなたの勝ちです！"
elsif $partner_score == 1
  puts "ざんねん！この試合は、あなたの負けです！"
end
