

def pascal(x)
  n=3
  i=1
  if (x>=1)
    puts 1
  end
  if (x>=2)
    puts "1 1"
  end
  t=[1,1]
  while (n<=x)
    j= [1]
    while (i<n-1)
        j<< (t[i-1]+t[i])
        i=i+1
    end
    j<<1
    puts j
    i=1
    t=j
    n=n+1
  end
end



def slownie(x)
  case x
    when 0... 10
      case x
        when 0
          printf ""
        when 1
          printf "jeden"
        when 2
          printf "dwa"
        when 3
          printf "trzy"
        when 4
          printf "cztery"
        when 5
          printf "pięć"
        when 6
          printf "sześć"
        when 7
          printf "siedem"
        when 8
          printf "osiem"
        when 9
          printf "dziewiec"
      when 10
        printf "dziesiec"
      else printf "Coś nie tak"
      end

  when 11..19
    case x
      when 11
        printf "jedenascie"
      when 12
        printf "dwanaście"
      when 13
        printf "trzynascie"
      when 14
        printf "czternascie"
      when 15
        printf "pietnaście"
      when 16
        printf "szesnaście"
      when 17
        printf "siedemnascie"
      when 18
        printf "osiemnascie"
      when 19
        printf "dziewietnascie"
    end

  when 20... 99
    z= x/10
      case z
        when 2
          printf "dwadzieścia "
          slownie(x%10)
        when 3
          printf "tzrydziesci "
          slownie(x%10)
        when 4
          printf "czterdzieści "
          slownie(x%10)
        when 5...9
          slownie(z)
          printf "ziesiat "
          slownie(x%10)
      else printf "Coś nie tak "
      end

  when 100...999
    z= x/100
    case z
      when 1
        printf "sto "
        slownie(x%100)
      when 2
        printf "dwiescie "
        slownie(x%100)
      when 3
        printf "trzysta "
        slownie(x%100)
      when 4
        printf "czterysta "
        slownie(x%100)
      when 5...9
        slownie(z)
        printf "set "
        slownie(x%100)
    end

  when 1000...9999
    z= x/1000
    case z
    when 1
      printf "tysiac "
    when 2...4
      slownie(z)
      printf " tysiace "
      slownie(x%1000)
    when 5...9
      slownie(z)
      printf " tysiecy "
      slownie(x%1000)
    end
  else
    printf "Za duza liczba"
    return
  end
end

=begin
x=6340
slownie(x.to_i)
=end

x=4
pascal(x.to_i)
