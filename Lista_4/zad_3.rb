

class Element
  def initialize(val)
    @val=val
  end

  def value
    @val
  end

  def to_s
    @val.to_s
  end
end

class DrzewoBinarne < Element
=begin
  include Comparable

  def <=> (aDrzewoBinarne)
    self.d_val <=> aDrzewoBinarne.d_val
  end

=end
  def d_val
    @el.value
  end

  def initialize(el, dl,dr)
    @el=el
    @dl=dl
    @dr=dr
  end

  def to_s
    if @dl ==() && @dr== ()
        '(' + @el.to_s + ')'
    elsif @dl ==() && @dr!= ()
       '(' + '(' + @el.to_s + ')' + @dr.to_s  + ')'
    elsif  @dr==()
        '(' + @dl.to_s + '(' + @el.to_s + ')' + ')'
    else
       '(' + @dl.to_s + '(' + @el.to_s + ')' + @dr.to_s  + ')'
    end
  end

  def istnieje? (el2)
    if @el.value == el2.value
      true
    elsif @el.value < el2.value
        if @dr == nil
          false
        else
          @dr.istnieje? (el2)
        end
    else
      if @dl == nil
        false
      else
        @dl.istnieje? (el2)
       end
     end
  end

=begin
  def usun(el2)

    left = @dl
    right = @dr

    if (left.valu == el2.value)

      end
    end
  end


def wstaw(el2)
  if @el.value == el2.value
    return self
  elsif el2.value < @el.value
    insert(node.left, value)
  elsif value > node.value
    insert(node.right, value)
  else
    return node = Node.new(value)
  end
end
=end
end

class StringBT < DrzewoBinarne
  def initialize(str)
    @str=str
  end
end

x=DrzewoBinarne.new( Element.new(15), (DrzewoBinarne.new(Element.new(13),(),())),(DrzewoBinarne.new(Element.new(20), (),())))
y=DrzewoBinarne.new( Element.new(7), (),())


puts y.istnieje?(Element.new(7))

puts x.istnieje?(Element.new(13))

puts x.to_s

