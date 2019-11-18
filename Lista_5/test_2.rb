lista=[]
start_page= "adbshb"
word_list = ["s1","s2","s3"]
new= {start_page=> word_list}
l2= lista.push(new)
puts l2
puts new.keys
z=new.values
z.flatten.each do |a| print "1 "+a+" "end

#print l2.push(new)
w="s3"
c="s3"
if w=~ /#{c}/
  puts "tak"
  else puts "nie"
end