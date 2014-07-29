require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'atm')

module DomainDriver

  def account(starting_balance = 0.0)
    @account ||= Account.new(starting_balance)
  end

  def teller
    @teller = Teller.new
  end

  def retrieve_balance
    @retrieved_balance = @account.balance
  end

  def deposit(amount)
    @account.deposit(amount)
  end

  def withdraw(amount)
    @withdrawal_result = teller.withdraw_from(account, amount)
  end

  def check_result(expected)
    assert_equal expected, @withdrawal_result
  end

end

module WebDriver

  class UserInterface
    include Capybara::DSL

    def withdraw_from(account, amount)
      Sinatra::Application.account = account
      visit '/'
      fill_in 'Amount', :with => amount
      click_button 'Withdraw'
    end

    def check_result(result)
      page.has_content?(result)
    end
  end

  def teller
    @teller = UserInterface.new
  end

  def account(starting_balance = 0.0)
    @account ||= Account.new(starting_balance)
  end

  def retrieve_balance
    @retrieved_balance = @account.balance
  end

  def deposit(amount)
    @account.deposit(amount)
  end

  def withdraw(amount)
    teller.withdraw_from(account, amount)
  end

  def check_result(expected)
    teller.check_result(expected)
  end
end


World(MiniTest::Assertions, WebDriver)
