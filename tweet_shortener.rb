def dictionary(word)
  hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
    }
    new_word = ""
    if hash.include?(word)
      new_word = hash[word]
    else
      new_word = word
    end
  new_word
end

def word_substituter(tweet)
    words = tweet.split(" ")
    new_tweet = []
    words.each do |word|
      new_tweet << dictionary(word)
    end

    new_tweet.join(" ")
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
  new_tweet = selective_tweet_shortener(tweet)
  if new_tweet.length > 140
    return new_tweet[0..136] + "..."
  else
    return new_tweet
  end
end
