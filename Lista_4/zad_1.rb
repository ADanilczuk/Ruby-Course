

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

z= Dodawanie.new( Mnozenie.new( Stala.new(5), Odejmowanie.new( Stala.new(3), Stala.new(1))), Dzielenie.new(Stala.new(8), Stala.new(2)))
puts z.to_s
puts z.oblicz

y= Dodawanie.new(Dzielenie.new( Stala.new(4) ,  Stala.new(2)), Stala.new(0))
puts y.to_s
puts y.uproszczenie.to_s
puts y.uproszczenie.oblicz


