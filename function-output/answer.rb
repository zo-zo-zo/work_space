最初の行（座席数と入店するグループの総数）の入力を受け付けます（８）（A）
seats_and_groups = gets.split(/\s/)
seats_and_groupsにgetsで取得した文字列を１文字ごとに分割し配列として返す
席数とグループ分け
# 下記のコードが何をしているかを説明してください・・・（B）
empty_seat = [*1..(seats_and_groups[0].to_i)]
empty_seatに１からseats_and_groups[0]までの配列を数値へ変換して返す
空席
# 下記のコードが何をしているかを説明してください・・・（C）
seats_count = empty_seat.count
seats_countにempty_seatの配列の数を整数として返す
空席の配列の数
# 下記のコードが何をしているかを説明してください・・・（D）
number_of_visitors = seats_and_groups[1].to_i
number_of_visitorsにseats_and_groups配列のインデックス番号1を数値へ変換して返す
２番目のグループの客数の確認
# 下記のコードが何をしているかを説明してください・・・（E）
[*1..number_of_visitors].each do
1からnumber_of_visitorsまでの要素を順番に取得する
２番目のグループの客の配席
  # 下記のコードが何をしているかを説明してください・・・（F）
  used_seats = gets.split(/\s/)
  used_seatsにgetsで取得した文字列を１文字ごとに分割し配列として返す
  使用席の確認作業
  # 下記のコードが何をしているかを説明してください・・・（G）
  users = used_seats[0].to_i
  usersにused_seats配列のインデックス番号0を数値へ変換して返す
  最初のグループの使用席の数
  # 下記のコードが何をしているかを説明してください・・・（H）
  seating_number = used_seats[1].to_i
seating_numberにused_seats配列のインデックス番号0を数値へ変換して返す
２番目のグループの使用席の数
  # 下記のコードが何をしているかを説明してください・・・（I）
  fill_last_number = ((seating_number + users) - 1)
  使用席の最後の席番号。インデックスなので−１。

  # 下記のコードが何をしているかを説明してください・・・（J）
  if fill_last_number > seats_count
    使用席の最後の番号が空席の配列数よりも大きい場合
    # 下記のコードが何をしているかを説明してください・・・（K）
    # （下記のコードは理解が難しいので、下記にヒントを載せます）

    # 「今回のグループが最後に着席する席の番号」 = 「今回のグループが最後に着席する席の番号」-「そもそもの座席の総数」となる（円卓だから）。
    # 例えば、fill_last_number == 13で、seats_countが12だったら、1 = 13 - 12となり、席番号が１の席に最後の人間が座る。
    fill_last_number = fill_last_number - seats_count
    円卓のため席番号の最後を再配置する
    # （下記のコードは理解が難しいので、下記にヒントを載せます）

    # next_seat_candidateは、「その席に既に人が座っていないか？」を判断するための配列
    # ([*1..seats_count] - empty_seat)は、（「全ての席」-　「まだ人が座っていない席」）の意味。つまり、「既に人が座っている席」の数字が、([*1..seats_count] - empty_seat)
    # [*seating_number..seats_count]は、[*「今回のグループが最初に着席する席の番号」..「最後の席の番号」]の意味
    # [*1..fill_last_number]は、[*「１（最初の席）」..「今回のグループが最後に着席する席の番号」]の意味
    # なので、next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..seats_count] + [*1..fill_last_number]は、
    # next_seat_candidate = 「既に人が座っている席」+ [*「今回のグループが最初に着席する席の番号」..「最後の席の番号」] + [*「１（最初の席）」..「今回のグループが最後に着席する席の番号」]となる。
    # つまり、 next_seat_candidateの配列の中に、同じ数字が含まれていれば、「既に埋まっている席に新たなグループの人間が座ろうとしている」ということになる
    next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..seats_count] + [*1..fill_last_number]
    その席に既に人が座っていないか＝既に人が座っている席 + 今回のグループが座る最初の席〜最後の席の番号 + 最初の席〜今回のグループが最後に座る席の番号　
    次に座るべき席を円卓の席番号の繰り返して探す
  else
    # 下記のコードが何をしているかを説明してください・・・（L）
    # （下記のコードは理解が難しいので、下記にヒントを載せます）

    # next_seat_candidate = 「既に人が座っている席」+ [*「今回のグループが最初に着席する席の番号」..「今回のグループが最後に着席する席の番号」]となる
    # つまり、 next_seat_candidateの配列の中に、同じ数字が含まれていれば、「既に埋まっている席に新たなグループの人間が座ろうとしている」ということになる
    next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..fill_last_number]
    次に座るべき席を繰り返しなく探す
  end

  # 下記のコードが何をしているかを説明してください・・・（M）
  if next_seat_candidate.count == next_seat_candidate.uniq.count
    # 下記のコードが何をしているかを説明してください・・・（N）
    if ((seating_number + users) - 1) > seats_count
      # 下記の二行のコードが何をしているかを説明してください・・・（O）
      empty_seat = empty_seat - [*1..fill_last_number]
      empty_seat = empty_seat - [*seating_number..seats_count]
    else
      # 下記のコードが何をしているかを説明してください・・・（P）
      empty_seat = empty_seat - [*seating_number..fill_last_number]
    end
  end
end

# 下記のコードが何をしているかを説明してください・・・（Q）
puts seats_count - empty_seat.count
