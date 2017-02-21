class BonusDrink

  def self.total_count_for(amount)
    total_count = amount;   # 飲んだ合計本数
    empty_bottles = amount; # 空き瓶の数。増減する

    # 空ボトルが3本未満になるまで繰り返す
    while (empty_bottles > 2)

      # おまけドリンクをもらう。空き瓶は消費される
      bonus_drink = empty_bottles / 3;
      empty_bottles = empty_bottles % 3;

      # もらった分を総計と空き瓶数に追加
      total_count += bonus_drink;
      empty_bottles += bonus_drink;
    end

    return total_count;
  end
end
