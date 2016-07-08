class MainController < ApplicationController
  def index
  @data = RestClient.get('https://itunes.apple.com/search', {
      # the first 'term' is from iTunes. the second is from our form in index.html.erb
      params: {term: params[:term]}
    })
  # render :json => data
  # we received the data, now we need to send it somewhere
    @data = JSON.parse(@data)['results']
  end
end
