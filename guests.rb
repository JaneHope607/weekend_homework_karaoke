class Guests

    attr_reader :name, :money

    def initialize(name, money)
        @name = name
        @money = money
    end

    def pay_for_room(room)
        if sufficient_funds?(room)
            @money -= room.price()
        end
    end

    def sufficient_funds(room)
        return money >= room.price()
    end

end
