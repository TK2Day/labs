


nato = {"a" => "alpha", "b" => "beta", "c" => "charlie", "d" => "delta", "e" => "echo", "f" => "foxtrot", "g" => "golf", "h" => "hotel", "i" => "india", "j" => "juliett", "k" => "kilo", "l" => "lima", "m" => "mike", "n" => "november", "o" => "oscar", "p" => "papa", "q" => "quebec", "r" => "romeo", "s" => "sierra", "t" => "tango", "u" => "uniform", "v" => "victor", "w" => "whiskey", "x" => "xray", "y" => "yankee", "z" => "zulu", "_" => " ", "," => ","}

 net_talk = {"a" => "4", "b" => "6", "c" => "(", "d" => "c|", "e" => "3", "f" => "]]==", "g" => "&", "h" => "#", "i" => "!", "j" => ",|", "k" => "]<", "l" => "|_", "m" => "(V)", "n" => "(\)", "o" => "()", "p" => "|*", "q" => "(,)", "r" => "|*\"", "s" => "$", "t" => "']'", "u" => "(_)", "v" => "\"_/", "w" => "'//", "x" => "%", "y" => "'/", "z" => "7_", "_" => " ", "," => ","}


def encoder(message, alphabet)
  message.downcase!
  results = ""
   message.each_char do |v|
    results << alphabet[v]
   end
   puts results
end


def decoder(message, nato)
  message.downcase!
   results = ""
    anato = nato.invert
     natoArray = message
      natoArray.split.each do |v|
    results << natoArray(v)
   binding.pry
   puts results
 end
end


msg = 'if_more_of_us_valued_food_and_cheer_and_song_above_hoarded_gold,_it_would_be_a_merrier_world'
puts 'hey this is how you talk in netspeak...'
encoder(msg, net_talk)

puts 'hey this is how you talk in nato'
encoder(msg, nato)


msg2 = 'indiafoxtrot mikeoscarromeoecho oscarfoxtrot uniformsierra victoralphalimauniformechodelta foxtrotoscaroscardelta alphanovemberdelta charliehotelechoechoromeo alphanovemberdelta sierraoscarnovembergolf alphabetaoscarvictorecho hoteloscaralpharomeodeltaechodelta golfoscarlimadelta, indiatango whiskeyoscaruniformlimadelta betaecho alpha mikeechoromeoromeoindiaechoromeo whiskeyoscarromeolimadelta'


 # puts 'and this is also the translated text!'
 # decoder(msg2, net_talk)

puts 'and this is the translated text!'
decoder(msg2, nato)
