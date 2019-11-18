

module Find


  def index(start_page, depth)
   require 'open-uri'

    word_list=[]
    open(start_page) do | pg |
      while depth>0
        pg.each_line do |line |
          tab= line.split
          tab.each do |x|
            if not word_list.include?(x)
            word_list.push(x)
            end
          end
        depth= depth-1
        end
      end
    end
   new_hash= {start_page => word_list}
    self.dodaj(new_hash)
  end

  def search(reg_exp)

    lista= self.lista
    lista.each do |x|
      found=0
      words= x.values
      words.flatten.each do |w|
        if w=~ /#{reg_exp}/ && found==0
          puts x.keys
          found=1
        end
      end
    end
  end
end


class Wyszukiwanie

include Find

  def initialize
    @list =[]
  end


  def dodaj(x)
    @list.push(x)
  end

  def lista
    @list
  end

end


test1=Wyszukiwanie.new()
test2=Wyszukiwanie.new()

test1.index("http://grabun.pl/wyrazenia-regularne/", 15)
puts "Co znaleziono w "
test1.search("co")

test1.index("https://ruby-doc.org/core-2.2.0/Regexp.html",15)
puts "Holds znaleziono w "
test1.search("holds")

puts""
puts "Ruby znaleziono w "
test1.search("Ruby")
