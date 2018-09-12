def dictionary(word)
  subs = {
   "hello" => "hi",
   "to" => "2",
   "too" => "2",
   "for" => "4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
  }

 subs[word.downcase]
	  
end


def word_substituter(str)
	tweet = str.split(" ")
	shortened = tweet.map do |word|
		(dictionary(word) == nil) ? (word = word) : (word = dictionary(word))
	end
	shortened.join(" ")
end


def bulk_tweet_shortener(arr)
	arr.each do |x| 
		puts word_substituter(x)
	end
end


def selective_tweet_shortener(str)
  str.length > 140 ? word_substituter(str) : str 
end


def shortened_tweet_truncator(str)
  shortened = selective_tweet_shortener(str)
  if str.length < 140
    str
  elsif shortened.length > 140
   shortened[0..136] + "..."
 else 
   shortened
  end
end
