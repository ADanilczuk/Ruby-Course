
def rozklad(n)
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
  print  tab
  puts ""
end


rozklad(9)
rozklad(756)


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


def zaprzyjaznione(n)
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
  print tab
end

zaprzyjaznione(1300)
zaprzyjaznione(30)



