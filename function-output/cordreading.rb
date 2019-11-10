最初の行（座席数と入店するグループの総数）の入力を受け付けます（８）（A）
seats_and_groups = gets.split(/\s/)

何組のグループが入店するのか、その数を変数に入れておきます（１１）（B）
empty_seat = [*1..(seats_and_groups[0].to_i)]

座席の数を変数に入れておきます（１３）（C）
seats_count = empty_seat.count

来店したグループの人数を変数に代入します（６）（D）
number_of_visitors = seats_and_groups[1].to_i

座席を配列で作成します（１０）（E）
[*1..number_of_visitors].each do

二行目以降の行（グループの人数と着席開始座席番号）の入力を受け付けます（４）（F）
  used_seats = gets.split(/\s/)

来店したグループの人数を変数に代入します（６）（G）
  users = used_seats[0].to_i

  来店したグループの着席開始座席番号を変数に代入します（１２）（H）
  seating_number = used_seats[1].to_i

  来店したグループの最後の人間が着席した席の番号を変数に代入します（９）（I）
  fill_last_number = ((seating_number + users) - 1)

  来店したグループの座りたい席がすでに埋まっていないかをif文で確認します（埋まっていなければif内の処理をします）（５）（J）
  if fill_last_number > seats_count


    もしも最後の人間が着席した席の番号が、最初に定義された座席の数を超えていたら、最初の席の数に戻して再計算します（円卓だから）（３）

（K）

    fill_last_number = fill_last_number - seats_count
    next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..seats_count] + [*1..fill_last_number]

  else
    最後の人間が着席した席の番号が、最初に定義された座席の数を超えていなかったら、そのまま計算します（２）（L）
    next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..fill_last_number]
  end

  来店したグループが席につけるかどうかを確認するための配列を、if文で条件分けしながら定義します。（７）
（M）
  if next_seat_candidate.count == next_seat_candidate.uniq.count
    最後の人間が着席した席の番号が、最初に定義された座席の数を超えていた場合と、
    そうでない場合とで座席の埋め方をif文で分岐させます（１４）（N）
    if ((seating_number + users) - 1) > seats_count
      埋まっていない、かつ、末尾の番号が最初に定義された座席の数を超えていれば、最初の席の番号〜末尾の番号と、
      着席開始座席番号〜最後の席の番号、の二回に分けて席を埋めていきます（１７）
      （O）
      empty_seat = empty_seat - [*1..fill_last_number]
      empty_seat = empty_seat - [*seating_number..seats_count]
    else
      埋まっていない、かつ、末尾の番号が席の数を超えていなければ、そのまま来店した人数分のシートを埋めていきます（１）
（P）
      empty_seat = empty_seat - [*seating_number..fill_last_number]
    end
  end
end
最終的に席に座っている人数を出力します（１６）（Q）
puts seats_count - empty_seat.count
