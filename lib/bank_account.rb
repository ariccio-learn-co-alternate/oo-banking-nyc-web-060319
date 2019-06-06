class BankAccount
    OPEN = "open"
    CLOSED = "closed"
    PENDING = "pending"
    attr_reader :name
    attr_accessor :balance
    attr_accessor :status

    def initialize(name)
        @name = name
        @balance = 1000
        @status = OPEN
    end

    def deposit(amount)
        @balance += amount
    end

    def display_balance
        "Your balance is $#{@balance}."
    end

    def valid?
        if (@status == OPEN) && (@balance > 0)
            return true
        end
        false
    end

    def close_account
        @status = CLOSED
    end
end
