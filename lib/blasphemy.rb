module Faker
  
  # heavily inspired (mildly said) by lorem_ipsum.py from Django contrib/webdesign
  class CustomIpsum
    attr_accessor :wordlist
    def initialize
      raise 'Doh! You are trying to instantiate an abstract class!'
    end
    
    def words(num = 3)
      @wordlist.shuffle[0, num]
    end
    # Returns a randomly generated sentence of lorem ipsum text.
    # The first word is capitalized, and the sentence ends in either a period or
    # question mark. Commas are added at random.
    def sentence
      # Determine the number of comma-separated sections and number of words in
      # each section for this sentence.
      sections = []
      1.upto(rand(5)+1) do
        sections << (words(rand(9)+3).join(" "))
      end
      s = sections.join(", ")
      return s.capitalize + ".?!".slice(rand(3),1)
    end
    
    # Returns a randomly generated paragraph of lorem ipsum text.
    # The paragraph consists of between 1 and 4 sentences, inclusive.
    def paragraph
      ((1..(rand(3)+2)).map{sentence}).join(" ")
    end
  end
  
  class MetalIpsum < CustomIpsum
    def initialize
      @wordlist = ['exercitationem', 'perferendis', 'excruciating', 'sphere', 'killing',
        'murder', 'iure', 'metal', 'mass', 'black', 'blood', 'haunted', 'vulgar',
        'kill', 'unholy', 'satan', 'satanic', 'conjuring', 'demons', 'demonic',
        'maims', 'massacre', 'massacres', 'apocalyptic', 'scream', 'screaming',
        'slime', 'nordic', 'church', 'leading', 'feasting', 'goat', 'cow',
        'acts', 'anger', 'rage', 'terror', 'death', 'scent', 'burning', 'flame',
        'undead', 'necro', 'cum', 'flesh', 'chaos', 'decapitate', 'sanity', 'mad',
        'crazy', 'cryptic', 'insane', 'cadaver', 'fest', 'feast', 'witch', 'christian',
        'devil', 'evil', 'funeral', 'divine', 'horse', 'sword', 'axe', 'ax', 'battle', 
        'forge', 'monster', 'horror', 'ov', 'bronze', 'bone']
    end
  end
  
  class TabulaIpsum < CustomIpsum
    def initialize
      @wordlist = []
    end
  end
end
