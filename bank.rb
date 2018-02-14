class Customer
    def initialize(name, acct_num)
        @name = name
        @acct_num = acct_num
        @balance = 0
    end

    attr_accessor :balance
    attr_reader :name, :acct_num

    def deposit num
        @balance += num
        puts "#{@name}'s balance is #{@balance}"
    end

    def withdraw num
        if @balance - num > 0
            @balance -= num
            puts "#{@name}'s Balance is #{@balance}"
        else
            puts "#{@name} does not have the funds for this withdraw"
        end
    end
end