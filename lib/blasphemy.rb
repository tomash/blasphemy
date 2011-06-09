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


  class BaconIpsum < CustomIpsum
    def initialize
      @wordlist = [
        'adipisicing', 'aliqua', 'aliquip', 'anim', 'aute', 'bacon', 'ball', 'beef',
        'belly', 'chicken', 'chop', 'chuck', 'cillum', 'commodo', 'consectetur',
        'consequat', 'corned', 'cow', 'cupidatat', 'deserunt', 'do', 'dolor',
        'drumstick', 'duis', 'ea', 'elit', 'enim', 'esse', 'est', 'et', 'eu',
        'ex', 'fatback', 'flank', 'fugiat', 'ground', 'ham', 'hamburger', 'hock', 'id',
        'in', 'incididunt', 'irure', 'jerky', 'labore', 'laboris', 'loin', 'magna',
        'meatball', 'minim', 'mollit', 'nisi', 'non', 'nostrud', 'nulla', 'occaecat', 'officia',
        'pancetta', 'pariatur', 'pastrami', 'pig', 'pork', 'proident', 'qui', 'quis', 'ribeye', 'ribs',
        'round', 'sausage', 'sed', 'shank', 'shankle', 'short', 'shoulder', 'sint', 'sirloin', 'spare',
        'steak', 'strip', 'sunt', 't-bone', 'tail', 'tempor', 'tenderloin', 'tip', 'tongue', 'tri-tip',
        'turkey', 'ullamco', 'ut', 'velit', 'veniam', 'venison', 'venisonadipisicing' ]
    end
  end
end
