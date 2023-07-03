class Stock < ApplicationRecord

  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(publishable_token: Rails.application.credentials.iex_client[:api_key],
                                  secret_token: 'sk_283b089cd04846b3b4d89400ee510b4a',
                                  endpoint: 'https://cloud.iexapis.com/v1')
    client.price(ticker_symbol)
  end
end
