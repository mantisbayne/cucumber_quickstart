require 'sinatra'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib', 'atm'))

set :account, Account.new(1000.0)

get '/' do
  %{
  <html>
    <body>
      <h2>Current Balance:</h2><p>#{settings.account.balance}</p>
      <form action="/withdraw" method="post">
        <label for="amount">Amount</label>
        <input type="text" id="amount" name="amount">
        <button type="submit">Withdraw</button>
      </form>
    </body>
  </html>
  }
end


post '/withdraw' do
  teller = Teller.new
  teller.withdraw_from(settings.account, params[:amount].to_i)
  puts settings.account.balance
  redirect '/'
end
