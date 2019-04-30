require "pry"
# Write your code here.
def dictionary (string)
  keyHolder = ""
  dic = {
    "hi": ["hello"], "2": ["to", "too", "two"],
    "4": ["four", "for", "For"], "b": ["be"],
    "u": ["you"], "@": ["at"],
    "&": ["and"]
  }
  dic.each do |key,value|
    if value.include? (string)
      keyHolder = key.to_s
      break
    else
      keyHolder = string
    end
  end
  keyHolder
end

def word_substituter (line)
  ary = []
  wordHolder = ""
  line.split(" ").each do |word|
    wordHolder = dictionary(word)
    ary << wordHolder
  end
  return ary.join(" ")
end

def bulk_tweet_shortener (array)
  for i in 0...array.length
    puts word_substituter(array[i])
  end
end

def selective_tweet_shortener (line)
  newLine = ""
  if line.length > 140
    newLine = word_substituter(line)
  else
    newLine = line
  end
  return newLine
end

def shortened_tweet_truncator (line)
  newLine = ""
  if line.length >= 140
    newLine = line[0..135] + " ..."
  else
    newLine = line
  end
  return newLin
end
