class Guests

    attr_reader :name, :money, :favourite_song

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

    def favourite_song_present(room)
        if room.song_in_playlist(@favourite_song)
            return "Woo this is my favourite song!"
        else
            return "Aw no that sucks!"
        end
    end

end
