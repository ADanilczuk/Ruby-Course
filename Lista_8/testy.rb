class Obliczenia

  def initialize(val)
    @val=val
  end

  def value
    @val
  end

  def change(val)
    @val=val
  end

  def rozklad()
    n=self.value
    i =2
    check =0
    licznik=0
    tab=[]
    while (i<n+1)
      while (n%i==0)
        licznik=licznik+1
        n=n/i
        check=1
      end
      if (check ==1)
        tab << [i, licznik]
        licznik=0
        check=0
      end
      i=i+1
    end
    return  tab
    puts ""
  end


  def suma_dzielnikow(n)
    suma=0
    x=1
    while (x<n)
      if (n%x ==0)
        suma= suma +x
      end
      x= x+1
    end
    return suma
  end


  def zaprzyjaznione()
    n=self.value
    i=1
    s1=0
    tab = []
    liczby = Array.new(n)
    while (i<n+1)
      s1=suma_dzielnikow(i)
      liczby[i]=s1
      x=1
      while (x<i)
        if (liczby[x]==i && s1==x)
          tab <<[x, i]
        end
        x=x+1
      end
      i=i+1
    end
    if tab==[]
      puts "\nBrak liczb zaprzyjaźnionych w tym przedziale :( "
      return
    end
    return tab
  end
end

n=Obliczenia.new(9)
n.rozklad()
n.change(756)
n.rozklad()

n.change(1300)
n.zaprzyjaznione()
n.change(30)
n.zaprzyjaznione()



require "test/unit"

class Testrozklad< Test::Unit::TestCase
  def test_1
    x=Obliczenia.new(9)
    assert_equal([[3, 2]],x.rozklad())
    # assert_equal("((4/2)+0)",y.to_s)
    #assert_equal("(4-2)",z.to_s)
  end

  def test_2
    x=Obliczenia.new(30)
    assert_equal(42,x.suma_dzielnikow(x.value))
    # assert_equal("((4/2)+0)",y.to_s)
    #assert_equal("(4-2)",z.to_s)
  end

  def test_3
    x=Obliczenia.new(1300)
    assert_equal([[220, 284], [1184, 1210]],x.zaprzyjaznione())
    # assert_equal("((4/2)+0)",y.to_s)
    #assert_equal("(4-2)",z.to_s)
  end
end

