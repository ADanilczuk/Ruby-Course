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
  return tab
end

=begin
pierwsza(8)
pierwsza(1)
pierwsza(30)
=end
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
  return tab

end


doskonala(1000)


require 'tk'

root = TkRoot.new { title "Doskonałe i pierwsze?" }
TkLabel.new(root) do
   text 'Wpisz liczbę i wciśnij wybrany przycisk'
   pack { padx 90; pady 90; side 'left' }
end


def pierwsza_wyswietl(list)
	text_p = TkText.new(root) do
	width 10
	height 5
	borderwidth 1
	font TkFont.new('times 12 bold')
	pack("side" => "right",  "padx"=> "50", "pady"=> "200")
	end
	text_p.insert 'end', "Pierwsze: "
	text_p.insert 'end', list
end

def doskonala_wyswietl(list)
	text_d = TkText.new(root) do
	width 10
	height 5
	borderwidth 1
	font TkFont.new('times 12 bold')
	pack("side" => "right",  "padx"=> "50", "pady"=> "200")
	end
	text_d.insert 'end', "Doskonałe:"
	text_d.insert 'end', list
end

entry1 = TkEntry.new(root)

variable1 = TkVariable.new
entry1.textvariable = variable1
variable1.value = "Wpisz swoją liczbę"

entry1.place('height' => 25, 'width'  => 150, 'x'   => 10, 'y'   => 25)

p_button= TkButton.new(root) do
text "Pierwsze do liczby"
   borderwidth 5
   state "normal"
   cursor "watch"
   font TkFont.new('times 20 bold')
   foreground  "red"
   activebackground "blue"
   relief      "groove"
   command (proc {pierwsza_wyswietl(pierwsza(entry1.value.to_i))})
   pack("side" => "right",  "padx"=> "50", "pady"=> "10")
end

d_button = TkButton.new(root) do
text "Doskonałe do liczby"
   borderwidth 5
   state "normal"
   cursor "watch"
   font TkFont.new('times 20 bold')
   foreground  "red"
   activebackground "blue"
   relief      "groove"
   command (proc {doskonala_wyswietl(doskonala(entry1.value.to_i))})
   pack("side" => "right",  "padx"=> "50", "pady"=> "30")
end

Tk.mainloop



