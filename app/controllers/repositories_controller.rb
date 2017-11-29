class RepositoriesController < ApplicationController

  def search

  end

  def github_search
  end
end


Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = '086201935cabc1661dcd'
      req.params['client_secret'] = 'd2238baaa2e93c2eb5c87d1e1d36af1e135dddb3'
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'