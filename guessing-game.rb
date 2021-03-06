####################################################
#
####################################################
class GuessingGame

  @@AllWords = ["a", "able", "about", "above", "across", "act", "action", "actually", "add", "addition", "adjective", "afraid", "Africa", "after", "again", "against", "age", "ago", "agreed", "ahead", "air", "alimony", "all", "allow", "almost", "alone", "along", "already", "also", "although", "always", "am", "America", "among", "amount", "an", "and", "angle", "animal", "another", "answer", "any", "anything", "appear", "apple", "are", "area", "arms", "army", "around", "arrived", "art", "as", "ask", "at", "away", "baby", "back", "bad", "ball", "bank", "base", "be", "bear", "beat", "beautiful", "became", "because", "become", "bed", "been", "before", "began", "begin", "behind", "being", "believe", "bell", "belong", "below", "beside", "best", "better", "between", "big", "bill", "birds", "bit", "black", "block", "blood", "blow", "blue", "board", "boat", "body", "bones", "book", "born", "both", "bottom", "box", "boy", "branches", "break", "bright", "bring", "British", "broken", "brother", "brought", "brought", "brown", "build", "building", "built", "burning", "business", "but", "buy", "by", "call", "came", "can", "cannot", "capital", "captain", "car", "care", "carefully", "carry", "case", "cat", "catch", "cattle", "caught", "cause", "cells", "center", "cents", "century", "certain", "chance", "change", "chart", "check", "chief", "child", "children", "choose", "church", "circle", "circular", "city", "class", "clean", "clear", "climbed", "close", "clothes", "cloud", "coast", "cold", "color", "column", "come", "common", "company", "compare", "complete", "compound", "conditions", "consider", "consonant", "contain", "continued", "control", "cook", "cool", "cooler", "copy", "corn", "corner", "correct", "cost", "cotton", "could", "count", "country", "course", "covered", "cows", "create", "cried", "crops", "cross", "crowd", "crowded", "current", "cut", "dance", "dark", "day", "dead", "deal", "death", "decided", "decimal", "deep", "describe", "desert", "design", "details", "determine", "developed", "dictionary", "did", "died", "difference", "different", "difficult", "direct", "direction", "discovered", "distance", "divided", "division", "do", "doctor", "does", "dog", "dollars", "done", "door", "down", "draw", "drawing", "dress", "drive", "drop", "dry", "during", "each", "early", "ears", "earth", "east", "easy", "eat", "edge", "effect", "eggs", "eight", "either", "electric", "elements", "else", "end", "energy", "engine", "England", "English", "enjoy", "enough", "entered", "entire", "equal", "equation", "especially", "Europe", "even", "evening", "ever", "every", "everyone", "everything", "exactly", "example", "except", "exciting", "exercise", "expect", "experience", "experiment", "explain", "express", "eye", "face", "fact", "factories", "factors", "fall", "family", "famous", "far", "farm", "farmers", "fast", "father", "fear", "feel", "feeling", "feet", "fell", "felt", "few", "field", "fig", "fight", "figure", "filled", "finally", "find", "fine", "fingers", "finished", "fire", "first", "fish", "fit", "five", "flat", "floor", "flow", "flowers", "fly", "follow", "food", "foot", "for", "force", "forest", "form", "forward", "found", "four", "fraction", "France", "free", "French", "fresh", "friends", "from", "front", "fruit", "full", "fun", "funny", "game", "garden", "gas", "gave", "general", "get", "girl", "give", "glass", "go", "gold", "golden", "gone", "good", "got", "government", "grass", "great", "Greek", "green", "grew", "ground", "group", "grow", "guess", "gun", "had", "hair", "halt", "hand", "happened", "happy", "hard", "has", "hat", "have", "he", "head", "hear", "heard", "heart", "heat", "heavy", "held", "help", "her", "here", "high", "hill", "him", "himself", "his", "history", "hit", "hold", "hole", "home", "hope", "horse", "hot", "hours", "house", "how", "however", "huge", "human", "hundred", "hunting", "I", "ice", "idea", "if", "important", "in", "inches", "include", "increase", "Indian", "indicate", "industry", "information", "insects", "inside", "instead", "instruments", "interest", "interest", "into", "iron", "is", "island", "it", "its", "itself", "Japanese", "job", "joined", "jumped", "just", "keep", "kept", "key", "killed", "kind", "king", "knew", "know", "known", "lady", "lake", "land", "language", "large", "last", "later", "laughed", "law", "lay", "lead", "learn", "least", "leave", "led", "left", "legs", "length", "less", "let", "letter", "level", "lie", "life", "lifted", "light", "like", "line", "list", "listen", "little", "live", "located", "long", "look", "lost", "lot", "loud", "love", "low", "machine", "made", "main", "major", "make", "man", "many", "map", "mapmaker", "march", "mark", "match", "material", "matter", "may", "maybe", "me", "mean", "measure", "meat", "meet", "melody", "members", "men", "metal", "method", "middle", "might", "mile", "milk", "million", "mind", "mine", "minutes", "miss", "modern", "molecules", "moment", "money", "months", "moon", "more", "morning", "most", "mother", "mountain", "mouth", "move", "movement", "much", "music", "must", "my", "name", "nation", "natural", "near", "necessary", "need", "never", "new", "next", "night", "no", "nor", "north", "northern", "nose", "not", "note", "nothing", "notice", "noun", "now", "number", "numeral", "object", "observe", "ocean", "of", "off", "office", "often", "oh", "oil", "old", "on", "once", "one", "only", "open", "opposite", "or", "order", "other", "our", "out", "outside", "over", "own", "oxygen", "page", "paint", "pair", "paper", "paragraph", "park", "part", "particular", "party", "passed", "past", "pattern", "pay", "people", "per", "perhaps", "period", "person", "phrase", "picked", "picture", "piece", "place", "plains", "plan", "plane", "plant", "plants", "play", "please", "plural", "poem", "point", "pole", "poor", "position", "possible", "pounds", "power", "practice", "prepared", "presidents", "pretty", "printed", "probably", "problem", "process", "produce", "products", "property", "provide", "pulled", "pushed", "put", "questions", "quickly", "quiet", "quite", "race", "radio", "rain", "raised", "ran", "rather", "reached", "read", "ready", "really", "reason", "received", "record", "red", "region", "remain", "remember", "repeated", "report", "represent", "resent", "rest", "result", "return", "rhythm", "rich", "ride", "right", "ring", "rise", "river", "riverbed", "road", "rock", "rolled", "room", "roommate", "root", "rope", "rose", "round", "row", "rule", "run", "safe", "said", "sail", "same", "sand", "sandbox", "sat", "save", "saw", "say", "scale", "school", "schoolyard", "science", "scientists", "score", "sea", "seat", "second", "section", "see", "seeds", "seem", "seen", "sell", "send", "sense", "sent", "sentence", "separate", "serve", "set", "settled", "seven", "several", "shall", "shape", "sharp", "she", "ship", "shoes", "shop", "short", "should", "shoulder", "shouted", "show", "shown", "side", "sight", "sign", "signal", "silent", "similar", "simple", "since", "sing", "sir", "sister", "sit", "six", "size", "skin", "sky", "sleep", "sleep", "slowly", "small", "smell", "smiled", "snow", "so", "soft", "soil", "soldiers", "solution", "some", "someone", "something", "sometimes", "son", "song", "soon", "sound", "south", "southern", "space", "speak", "special", "speed", "spell", "spot", "spread", "spring", "square", "stand", "stars", "start", "state", "statement", "stay", "steel", "step", "stick", "still", "stone", "stood", "stop", "store", "story", "straight", "strange", "stream", "street", "stretched", "string", "strong", "students", "study", "subject", "substances", "such", "suddenly", "suffix", "sugar", "suggested", "sum", "summer", "sun", "supply", "suppose", "sure", "surface", "surprise", "swim", "syllables", "symbols", "system", "table", "tail", "take", "talk", "tall", "teacher", "team", "tell", "temperature", "ten", "terms", "test", "than", "that", "the", "their", "them", "themselves", "then", "there", "these", "they", "thick", "thin", "thing", "think", "third", "this", "those", "though", "thought", "thousands", "three", "through", "thus", "tied", "time", "tiny", "to", "today", "together", "told", "tomorrow", "tone", "too", "took", "tools", "top", "total", "touch", "toward", "town", "track", "trade", "train", "train", "travel", "tree", "triangle", "trip", "trouble", "truck", "true", "try", "tube", "turn", "two", "type", "uncle", "under", "underline", "understand", "unit", "until", "up", "upon", "us", "use", "usually", "valley", "value", "various", "verb", "very", "view", "village", "visit", "voice", "vowel", "wait", "walk", "wall", "want", "war", "warm", "was", "wash", "Washington", "watch", "water", "waves", "way", "we", "wear", "weather", "week", "weight", "well", "wellness", "went", "were", "west", "western", "what", "whatever", "wheels", "when", "where", "whether", "which", "while", "white", "who", "whole", "whose", "why", "wide", "widen", "wife", "wild", "will", "win", "wind", "window", "wings", "winter", "wire", "wish", "with", "within", "without", "woman", "women", "wonder", "wood", "word", "work", "workers", "world", "would", "write", "written", "wrong", "wrote", "yard", "year", "yellow", "yes", "yet", "you", "young", "your", "yourself"]
  def initialize
    @lives = 0
    @letter_list = []
    @word_length = 0
    @secret_word = "cat"
    @guessed_letter = ''
    @display_word = []
    @end_value = ''
  end
  # Put your code - instance variables and methods - here.  Do not change the list of words above.
  def pick_random_word
    temp = []
    @@AllWords.each do |item|
      if item.length == @word_length
        temp.push item
      end

    end
    if temp == []
      return false
    end
    return temp[(rand(temp.length))]
  end

  def hide_word
    hidden_word = []
    @secret_word.length.times do
      hidden_word.push ('-')
    end
    return hidden_word
  end

  def ask_for_letters
    puts 'Guess a letter.'
    answer = gets.chomp
    return answer
  end


  def check_word
    temp_list = @secret_word.downcase.split('')
    temp_value = false
    temp_list.each_with_index do |item, index|
      if item == @guessed_letter
        @display_word[index] = item
        temp_value = true
      end

    end
    if temp_value == true
      return @display_word
    end
    return false
  end

  def check_letter_list
    @letter_list.each do |item|
      if item == @guessed_letter
        return true
      end
    end
    return false
  end

  def run
    # Edit this to add the code to start running the game here!

      puts "how big of of a word do you want to play with?"
      @word_length = gets.chomp.to_i

      @secret_word = pick_random_word
      puts @secret_word.to_s
       until @secret_word != false
          puts "No word found. Please pick a different word length"
          @word_length = gets.chomp.to_i
          puts @word_length.to_s

            @secret_word = pick_random_word
            puts @secret_word.to_s
        end

        @lives = (@word_length + 4)

    puts @secret_word
    @display_word = hide_word
    puts @display_word.join

    begin
      puts 'Number of lives ' + @lives.to_s
      @guessed_letter = ask_for_letters
      if check_letter_list == false
        @letter_list.push @guessed_letter
          after_check =  check_word
        if false == after_check
          puts 'Letter not found.'
          @lives = @lives - 1
        else
          after_check = @display_word
        end
        puts @display_word.join
      else
        puts 'letter Already guessed'
        @lives = @lives - 1
      end
      if @lives == 0
        puts "GAME OVER. You ran out of lives."
        @end_value = true
      end
      if @secret_word == @display_word.join
        puts 'Congradulations You WON!!!!!!!!!!!!!!!!!!!!!!!!!!'
        @end_value = true
      end
    end until @end_value == true
        puts "Sorry, this game is still under development."

  end # end run method
end # end class definition

#####################################################################
# This code should run your game.  You should not change it.
#####################################################################
game = GuessingGame.new
game.run
