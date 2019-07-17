# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    
    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        if num > 10
            @happiness = 10
        elsif num < 0
            @happiness = 0
        else
            @happiness = num
        end
    end

    def hygiene=(num)
        if num > 10
            @hygiene = 10
        elsif num < 0
            @hygiene = 0
        else
            @hygiene = num
        end
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end 

    def take_bath
        self.hygiene = (@hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = (@hygiene - 3)
        self.happiness = (@happiness + 2)
        "♪ another one bites the dust ♫"   
    end

    def call_friend(friend)
        self.happiness = (@happiness + 3)
        friend.happiness = (friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"   
    end

    def start_conversation(person, topic)
        case topic
        when "politics"
            self.happiness = (@happiness - 2)
            person.happiness = (person.happiness - 2)
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness = (@happiness + 1)
            person.happiness = (person.happiness + 1)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end 
    end
end

#when do i use .self and when do i use "=="