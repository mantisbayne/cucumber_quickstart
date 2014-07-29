class Teller

  def initialize
  end

  def withdraw_from(account, amount)
    account.withdraw(amount)
  end

end
