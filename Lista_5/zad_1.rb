
module Find

  def przeglad(start_page, depth, block)
    method(block).call(start_page,depth)
  end

  def page_weight(start_page,depth)
    require 'open-uri'
    ilosc=0
    aplett = /([a-z]|'|\s)*https([0-9]|\D)*|([a-z]|'|\s)*www([0-9]|\D)*/
    image=/([a-z]|'|\s)*.jpg([0-9]|\D)*/
    open(start_page) do | pg |
      while depth>0
        pg.each_line do |line |
          tab= line.split
          tab.each do |x|
            if x=~ aplett|| x=~image
              ilosc=ilosc+1
            end
          end
          depth= depth-1
        end
      end
    end
    puts ilosc
  end

  def page_summary(start_page, depth)
    require 'open-uri'

    title_start= /<title>/
    title_end= /<\/title>/

    found=0
    title_list=[]
    open(start_page) do | pg |
      while depth>0
        pg.each_line do |line |
          tab= line.split
          tab.each do |x|
            if x=~ title_start && found==0
              title_list.push($')
              found=1
            elsif found==1 && (not (x=~title_end))
              title_list.push(x)
            elsif x=~title_end
              title_list.push($`)
              found=0
            end
          end
          depth= depth-1
        end
      end
    end
    print title_list.flatten
  end

  def page_summary_head(start_page, depth)
    require 'open-uri'

    head_start= /<head>/
    head_end= /<\/head>/

    found=0
    head_list=[]
    open(start_page) do | pg |
      while depth>0
        pg.each_line do |line |
          tab= line.split
          tab.each do |x|
            if x=~ head_start && found==0
              head_list.push($')
              found=1
            elsif found==1 && (not (x=~head_end))
              head_list.push(x)
            elsif x=~head_end
              head_list.push($`)
              found=0
            end
          end
          depth= depth-1
        end
      end
    end
    print head_list
  end
end



class Opis_strony
  include Find
end


test1=Opis_strony.new()
test2=Opis_strony.new()

test2.page_weight("https://nowosci.com.pl/tak-wyglada-nowy-blok-komunalny-przy-ulicy-olsztynskiej-130-mieszkancu-juz-dostali-klucze-zdjecia/ar/12966284", 10)

test1.page_summary_head("http://grabun.pl/wyrazenia-regularne/", 10)
puts""
puts""
test1.page_summary("http://grabun.pl/wyrazenia-regularne/", 10)

#test1.przeglad("https://nowosci.com.pl/tak-wyglada-nowy-blok-komunalny-przy-ulicy-olsztynskiej-130-mieszkancu-juz-dostali-klucze-zdjecia/ar/12966284", 10, :page_weight)