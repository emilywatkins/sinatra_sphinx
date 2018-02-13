class Sphinx
  def initialize(answer1, answer2)
    @answer1 = answer1
    @answer2 = answer2
  end

  def riddle?
    answer1 = "snail"
    answer2 = "short"
    if @answer1 == answer1 && @answer2 == answer2
      true
    elsif @answer1 != answer1 || @answer2 != answer2
      false
    end
  end

end
