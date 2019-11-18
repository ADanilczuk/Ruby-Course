

class Stala

  def initialize(val)
    @val=val
  end

  def to_s
    @val.to_s
  end

  def oblicz
    @val
  end

end

class Zmienna
  def initialize(name)
    @name = name
  end

  def to_s
    @name
  end

  def oblicz
    @name
  end
end


class Dodawanie

  def initialize(c1,c2)
    @c1=c1
    @c2=c2
  end

  def to_s
    '(' + @c1.to_s + '+' + @c2.to_s + ')'
  end

  def oblicz
    @c1.oblicz + @c2.oblicz
  end

  def uproszczenie
    if @c1.oblicz ==0
      @c2
    elsif @c2.oblicz == 0
      @c1
    end
  end

end

class Odejmowanie

  def initialize(c1,c2)
    @c1=c1
    @c2=c2
  end

  def to_s
    '(' + @c1.to_s + '-' + @c2.to_s + ')'
  end

  def oblicz
    @c1.oblicz - @c2.oblicz
  end

  def uproszczenie
    if @c2.oblicz ==0
      @c1
    end
  end

end

class Mnozenie

  def initialize(c1,c2)
    @c1=c1
    @c2=c2
  end

  def to_s
    '(' + @c1.to_s + '*' + @c2.to_s + ')'
  end

  def oblicz
    @c1.oblicz * @c2.oblicz
  end

  def uproszczenie
    if @c1.oblicz == 1
      @c2
    elsif @c2.oblicz == 1
      @c1
    end
  end
end

class Dzielenie

  def initialize(c1,c2)
    @c1=c1
    @c2=c2
  end

  def to_s
    '(' + @c1.to_s + '/' + @c2.to_s + ')'
  end

  def oblicz
    if @c2.oblicz == 0
      raise "Dzielenie przez 0 !"
    else
      @c1.oblicz / @c2.oblicz
    end
  end

  def uproszczenie
    if @c2.oblicz == 1
      @c1
    end
  end

end


#  zadanie 2

class Podstaw
  def initialize(c1,c2)
    @c1=c1
    @c2=c2
  end

  def to_s
    @c1.to_s = @c2.to_s
  end

  def wykonaj
    @c2.wykonaj
  end
end

class Jezeli
  def initialize(w,c1,c2)
    @w= w
    @c1=c1
    @c2=c2
  end

  def to_s

  end


end