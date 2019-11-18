def pierwsza(n)
  if (n<2)
    puts "\nBrak liczb pierwszych"
    return
  end
  i=1
  tab =[]
  while (i<n+1)
    x=2
    while (x<i)
      if i % x==0
        x=i+2
      else
       x=x+1
      end
    end
    if x==i
      tab<< x
    end
    i=i+1
  end
  print tab
end


pierwsza(8)
pierwsza(1)
pierwsza(30)

puts ""

def doskonala(n)

  i = 1
  tab=[]
  while (i<n+1)
    x = 1
    suma_dzielnikow = 0
    while (x<i)
      if (i%x ==0)
        suma_dzielnikow= suma_dzielnikow +x
      end
      x= x+1
    end
    if (suma_dzielnikow == i)
      tab<<i
    end
    i= i+1
  end
  print tab
end

doskonala(1000)


