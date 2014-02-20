class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :upload

  after_create :notify

  def notify
    connection.execute "NOTIFY #{channel}, #{connection.quote self.to_s}"
  end

  def on_favorite_save
    connection.execute "LISTEN #{channel}"  
    loop do
      connection.raw_connection.wait_for_notify do |event, pid, favorite|
        yield favorite
      end
    end
  ensure
    connection.execute "UNLISTEN #{channel}"
  end

  private

  def channel
    "favorite_#{id}"
  end
end
