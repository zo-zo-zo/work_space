class Player
  def hand
    puts "数字を入力して下さい"
    puts "0:グー"
    puts "1:チョキ"
    puts "2:パー"
    player_hand = gets.input = ~/^[0-9]+$/


    if player_hand !=0 && player_hand !=1 && player_hand!=2
      puts "0〜2の数字を入力してください"
      player = Player.new
      enemy = Enemy.new
      janken = Janken.new
      janken.pon(player.hand,enemy.hand)
    end
    return player_hand
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
  end
end

class Enemy
  def hand
    array = ["グー","チョキ","パー"]
    enemy_hand = array[rand(3)]
    puts enemy_hand
    enemy_hand_index = array.index(enemy_hand)
    return enemy_hand_index
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
  end
end

class Janken
  def pon(player_hand,enemy_hand)
       if (player_hand - enemy_hand + 3) % 3 == 2
         puts "勝ち"
       elsif (player_hand - enemy_hand + 3) % 3 == 1
         puts "負け"
       elsif (player_hand - enemy_hand + 3) % 3 == 0
         puts "あいこで"
         puts "0〜2の数字を入力してください"
         player = Player.new
         enemy = Enemy.new
         janken = Janken.new
         janken.pon(player.hand, enemy.hand)
       end
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
  end
end
player = Player.new
enemy = Enemy.new
janken = Janken.new
# Playerに対してnewメソッドを実行することで実体Playerが出来上がる
# 下記の記述で、ジャンケンメソッドが起動される
janken.pon(player.hand, enemy.hand)
