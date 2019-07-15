class Bottles
  def verse(number)
    "#{first_verse(number)}\n#{second_verse(number)}\n"
  end

  def verses(start_verse, end_verse)
    (end_verse..start_verse).map{|i| verse(i)}.reverse.join("\n")
  end

  def song
    verses(99, 0)
  end

  private
  def first_verse(number)
    "#{number_and_bottles(number).capitalize} of beer on the wall, #{number_and_bottles(number)} of beer."
  end

  def second_verse(number)
    "#{take_down_or_go_to_the_store(number)}, #{number_and_bottles(number-1)} of beer on the wall."
  end

  def take_down_or_go_to_the_store(number)
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{what_to_take_down?(number)} down and pass it around"
    end
  end

  def number_and_bottles(number)
    if number >= 2
      "#{number} bottles"
    elsif number == 1
      "1 bottle"
    elsif number == 0
      "no more bottles"
    else
      "99 bottles"
    end
  end

  def what_to_take_down?(number)
    if number > 1
      "one"
    else
      "it"
    end
  end
end

