class Account

  attr_reader :balance

  def initialize(current_balance)
    @balance = current_balance.to_f
  end

  def deposit(deposit_amount)
    @balance += deposit_amount.to_f
  end

  def withdraw(withdrawal_amount)
    @balance -= withdrawal_amount.to_f
      if @balance < 0
        return 'OVERDRAWN'
      end
    @balance
  end

end
