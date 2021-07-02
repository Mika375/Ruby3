
coin = 100
point = 0
puts "-----------------"
puts "所有コイン数：100"
puts "所有ポイント：0"
puts "何コイン入れますか？"
puts "1(10コイン) 2(20コイン) 3(30コイン) 4(やめとく)"
puts "-----------------"

loop do
  player_select = gets.chomp.to_i

  if player_select == 1 || player_select == 2 || player_select == 3
    puts "エンターを3回押しましょう"

    computer_number1 = rand(9)
    computer_number2 = rand(9)
    computer_number3 = rand(9)
    computer_number4 = rand(9)
    computer_number5 = rand(9)
    computer_number6 = rand(9)
    computer_number7 = rand(9)
    computer_number8 = rand(9)
    computer_number9 = rand(9)
    numbers = ["1","2","3","4","5","6","7","8","9"]

    gets.chomp
    puts "-----------------"
    puts "|#{numbers[computer_number1]}|||"
    puts "|#{numbers[computer_number2]}|||"
    puts "|#{numbers[computer_number3]}|||"
    puts "-----------------"
    gets.chomp
    puts "-----------------"
    puts "|#{numbers[computer_number1]}|#{numbers[computer_number4]}||"
    puts "|#{numbers[computer_number2]}|#{numbers[computer_number5]}||"
    puts "|#{numbers[computer_number3]}|#{numbers[computer_number6]}||"
    puts "-----------------"
    gets.chomp  
    puts "-----------------"
    puts "|#{numbers[computer_number1]}|#{numbers[computer_number4]}|#{numbers[computer_number7]}|"
    puts "|#{numbers[computer_number2]}|#{numbers[computer_number5]}|#{numbers[computer_number8]}|"
    puts "|#{numbers[computer_number3]}|#{numbers[computer_number6]}|#{numbers[computer_number9]}|"
    puts "-----------------"
    
      if(computer_number2==computer_number5)&&(computer_number5==computer_number8)
        puts "真ん中に#{numbers[computer_number2]}が揃いました"
        puts "100コイン獲得！"
        puts "500ポイント獲得！"
        coin = coin - (10 * player_select) + 100
        point = point + 500
        
        if coin <= 0
          puts "コインが足りません"
          puts "ゲームを終了します"
          break
        end
        
        puts "-----------------"
        puts "所有コイン数：#{coin}"
        puts "所有ポイント：#{point}"
        puts "何コイン入れますか？"
        puts "1(10コイン) 2(20コイン) 3(30コイン) 4(やめとく)"
        puts "-----------------"
        
        
      else
        coin = coin - 10 * player_select
        
        if coin <= 0
          puts "コインが足りません"
          puts "ゲームを終了します"
          break
        end
        
        puts "-----------------"
        puts "所有コイン数：#{coin}"
        puts "所有ポイント：#{point}"
        puts "何コイン入れますか？"
        puts "1(10コイン) 2(20コイン) 3(30コイン) 4(やめとく)"
        puts "-----------------"    
        
      end  
        
  elsif player_select == 4
    puts "ゲームをやめました"
    
  end  
end


  