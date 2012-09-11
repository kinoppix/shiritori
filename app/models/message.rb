require 'net/http'

class Message < ActiveRecord::Base
  ##columns## :comment, :reply_to, :room_id, :user_id
  attr_accessible :comment, :reply_to, :room_id

  validates :room_id, :numericality => true
  validates :user_id, :numericality => true
  validates :reply_to, :numericality => {:allow_nil => true}

  belongs_to :user
  belongs_to :room

  before_create :broadcast_room
  after_create :notify_relative

  def notify_relative
    messages = Message.select('user_id')
      .where(:room_id => self.room_id)
      .where('user_id <> ?', self.user_id)
      .group('user_id').all
    messages.each do |message|
      query_string = "channel=" + message.user_id.to_s + "&message=arrived new message on room" + URI.encode(self.room_id.to_s)
      uri = URI(Shower::API_IN+'user')
      res = Net::HTTP.new(uri.host, uri.port).post(uri.path, query_string)
    end
  end

  def broadcast_room
    query_string = "channel=broadcast&message=" + URI.encode(self.comment.to_s) + "&reply_to=" + URI.encode(self.reply_to.to_s)
    uri = URI(Shower::API_IN+'room' + self.room_id.to_s)
    res = Net::HTTP.new(uri.host, uri.port).post(uri.path, query_string)
  end

  ## install script
  def self.install_shower
    res = Net::HTTP.get(URI(Shower::API_IN+'namespace.add?namespace=user'))
    puts res
  end
  
end
