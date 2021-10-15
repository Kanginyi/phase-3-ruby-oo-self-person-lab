# your code goes here
require "pry"

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    # Change Happiness from 0 to 10
    def happiness=(happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    # Change Hygiene from 0 to 10
    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end   
    end

    def clean?
        if @hygiene > 7
            return true
        end
        false
    end

    def happy?
        if happiness > 7
            return true
        end
        false
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = (hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = (happiness + 2)
        self.hygiene = (hygiene - 3)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = (happiness + 3)
        friend.happiness = (friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness = (happiness - 2)
            friend.happiness = (friend.happiness - 2)
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = (happiness + 1)
            friend.happiness = (friend.happiness + 1)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end

bingo = Person.new("bingo")
red = Person.new("red")

binding.pry