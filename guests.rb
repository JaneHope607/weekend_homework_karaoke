class Guests

    attr_reader :name, :money, favourite_song

    def initialize(name, money, favourite_song)
        @name = name
        @money = money
        @favourite_song = favourite_song
    end

    def pay_for_room(room)
        if sufficient_funds(room)
            @money -= room.price()
        end
    end

    def sufficient_funds(room)
        return @money >= room.price
    end

end
