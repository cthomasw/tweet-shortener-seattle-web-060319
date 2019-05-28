require 'pry'

def word_substituter(tweets)
	dictionary = {
	"hello" => "hi",
	"two" => "2",
	"to" => "2",
	"too" => "2",
	"four" => "4",
	"for" => "4",
	"be" => "b",
	"you" => "u",
	"at" => "@",
	"and" => "&"
	}

	tweet_array = tweets.split
	tweet_array.map! { |word|
		lowercase_word = word.downcase
		(dictionary.keys.include? lowercase_word) ? dictionary[lowercase_word] : word
	}

	return tweet_array.join(" ")
	
end

def bulk_tweet_shortener(tweets)
	tweets.each do |tweet|
		puts word_substituter(tweet)
	end

end

def selective_tweet_shortener(tweet)
	if tweet.length > 140
		return word_substituter(tweet)
	else
		return tweet
	end

end

def shortened_tweet_truncator(tweet)
	if tweet.length > 140
		selective_tweet_shortener(tweet)
		if tweet.length > 140
			return tweet[0...140]
		else return tweet
		end
	else
		return tweet
	end
end




