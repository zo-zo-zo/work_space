# require 'byebug'

class Player
  def hand
    puts "0〜2の数字を入力して下さい"
    puts "0:グー"
    puts "1:チョキ"
    puts "2:パー"
    choice = gets.chomp
    if choice =="0" || choice =="1" || choice =="2"
       puts player_hand = choice.to_i

    else
      # hand()
      player_hand = hand()
      # ここではじめhand()で再帰処理したが数字以外を入れた時に
      # player-handがnilになり値が入らないままreturnで返ってきていた。
      # 結果ponメソッドが動かなくなるエラーが出たが、
      # player_hand = hand()にすることにより数字以外を入れた場合でも値を入れることができた。
    end
    return player_hand
  end
end

class Enemy
  def hand
    array = ["相手の手はグーです","相手の手はチョキです","相手の手はパーです"]
    choice = array[rand(3)]
    puts choice
    enemy_hand = array.index(choice).to_i
    return enemy_hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
  end
end

class Janken
  def pon(player_hand,enemy_hand)

       if (player_hand - enemy_hand + 3) % 3 == 2
         puts "あなたの勝ちです"
       elsif (player_hand - enemy_hand + 3) % 3 == 1
         puts "あなたの負けです"
       elsif (player_hand - enemy_hand + 3) % 3 == 0
         puts "あいこです"
         player = Player.new
         enemy = Enemy.new
         janken = Janken.new
         janken.pon(player.hand,enemy.hand)
       end

  end
end


player = Player.new
enemy = Enemy.new
janken = Janken.new
janken.pon(player.hand,enemy.hand)
