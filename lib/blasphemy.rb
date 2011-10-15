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

  class SamuelLIpsum < CustomIpsum
    def initialize
      @wordlist = []
      @paragraph_list = [
        "Look, just because I don't be givin' no man a foot massage don't make it right for Marsellus to throw Antwone into a glass motherfuckin' house, fuckin' up the way the nigger talks. Motherfucker do that shit to me, he better paralyze my ass, 'cause I'll kill the motherfucker, know what I'm sayin'?",
        "My money's in that office, right? If she start giving me some bullshit about it ain't there, and we got to go someplace else and get it, I'm gonna shoot you in the head then and there. Then I'm gonna shoot that bitch in the kneecaps, find out where my goddamn money is. She gonna tell me too. Hey, look at me when I'm talking to you, motherfucker. You listen: we go in there, and that nigga Winston or anybody else is in there, you the first motherfucker to get shot. You understand?",
        "Do you see any Teletubbies in here? Do you see a slender plastic tag clipped to my shirt with my name printed on it? Do you see a little Asian child with a blank expression on his face sitting outside on a mechanical helicopter that shakes when you put quarters in it? No? Well, that's what you see at a toy store. And you must think you're in a toy store, because you're here shopping for an infant named Jeb.",
        "You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I don't know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that I'm breaking now. We said we'd say it was the snow that killed the other two, but it wasn't. Nature is lethal but it doesn't hold a candle to man.",
        "The path of the righteous man is beset on all sides by the iniquities of the selfish and the tyranny of evil men. Blessed is he who, in the name of charity and good will, shepherds the weak through the valley of darkness, for he is truly his brother's keeper and the finder of lost children. And I will strike down upon thee with great vengeance and furious anger those who would attempt to poison and destroy My brothers. And you will know My name is the Lord when I lay My vengeance upon thee.",
        "Now that we know who you are, I know who I am. I'm not a mistake! It all makes sense! In a comic, you know how you can tell who the arch-villain's going to be? He's the exact opposite of the hero. And most times they're friends, like you and me! I should've known way back when... You know why, David? Because of the kids. They called me Mr Glass.",
        "Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. You don't get sick, I do. That's also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown. However unreal it may seem, we are connected, you and I. We're on the same curve, just on opposite ends.",
        "Normally, both your asses would be dead as fucking fried chicken, but you happen to pull this shit while I'm in a transitional period so I don't wanna kill you, I wanna help you. But I can't give you this case, it don't belong to me. Besides, I've already been through too much shit this morning over this case to hand it over to your dumb ass.",
        "Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like they're actually proud of that shit.",
        "Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing.",
        "The path of the righteous man is beset on all sides by the iniquities of the selfish and the tyranny of evil men. Blessed is he who, in the name of charity and good will, shepherds the weak through the valley of darkness, for he is truly his brother's keeper and the finder of lost children. And I will strike down upon thee with great vengeance and furious anger those who would attempt to poison and destroy My brothers. And you will know My name is the Lord when I lay My vengeance upon thee."
      ]
      def paragraph
        @paragraph_list.sample
      end

      def paragraphs(count)
        (1..count).map{paragraph}.join(" \n")
      end
    end
  end

  class PornIpsum < CustomIpsum
    def initialize
      @wordlist = [
        "sex", "hardcore", "anal", "porn", "sperm", "deepthroat", "gag", "midget",
        "teen", "pussy", "gay", "nude", "cock", "dick", "breast", "tits", "virgin",
        "black", "chick", "latin", "milf", "cum", "amature", "escort", "orgasm", "horse",
        "asian", "blowjob", "creampie", "cumshot", "facial", "gangbang", "lesbian",
        "mature", "granny", "dirty", "slut", "nurse", "secretary", "shemale", "goat"]
    end
  end
end
