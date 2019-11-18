
$threads=[]

module Find

  def index(start_page,pg_end, distance, depth)
    require 'open-uri'

    aplett = /([a-z]|'|\s)*https(([0-9]|\D)*|([a-z]|'|\s)*www([0-9A-Za-z]| \\ | \. | : | ; )*/
    page = /([a-z]|'|\s)*https([0-9]|\D)*(-| \+ | [0-9A-Za-z])*\.([0-9A-Za-z]| \\ | \. | : | ; )*/

    open(start_page) do | pg |
      while depth<99999 && distance<6
        pg.each_line do |line |
          tab= line.split
          tab.each do |x|
            print "#{x}  "
            if x=~aplett
              a=$&
              puts a
              if a==pg_end
                self.dodaj(distance)
                puts ""
                puts "mamy"
                puts ""
                $threads.each { | t | t.join }
                break
              else
                distance= distance +1
                puts distance
                $threads<< Thread.new( index(a,pg_end, distance  , 0) )
              end
            end
            depth=depth+1
          end
        end
      end
    end
  end
end

class Wyszukiwanie

  include Find

  def initialize
    @dist =0
  end


  def dodaj(x)
    @dist = x
  end

  def dista
    @dist
  end

end

test2=Wyszukiwanie.new()

#test1.index("http://grabun.pl/wyrazenia-regularne/", "http://grabun.pl/wyrazenia-regularne/#jak",0, 0)
test2.index("http://grabun.pl/wyrazenia-regularne/", "http://grabun.pl/wyrazenia-regularne/#jak",0, 0)

puts test2.dista
