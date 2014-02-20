class StreamsController < ApplicationController
  include ActionController::Live

  def index
    response.headers['Content-Type'] = 'text/event-stream'
    Favorite.first.on_favorite_save do |favorite|
      response.stream.write("event: hello.world\nid: #{favorite}\ndata: { \"name\": \"Travis\" }\nretry: 10000\n\n")
    end
  rescue IOError
  ensure
    response.stream.close
  end
end
