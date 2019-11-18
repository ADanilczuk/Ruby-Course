threads = [ ]
total=0

5.times do | num |
  threads << Thread.new(num) do | n |
    dystans = 42196
    dystans -= 1
    while dystans > 0
      total += 1
      dystans -= 1
    end
    puts "#{n} Meta!!!"

  end
end
threads.each { | t | t.join() }

puts total
