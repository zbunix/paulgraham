require 'feedzirra'

# fetching a single feed
feed = Feedzirra::Feed.fetch_and_parse("http://www.aaronsw.com/2002/feeds/pgessays.rss") 

# puts feed entry

feed.entries.each_with_index do |entry,id|
  puts (id+1).to_s+".  ["+entry.title+"]"+"("+entry.url+")"
end
