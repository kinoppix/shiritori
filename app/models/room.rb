require 'net/http'

class Room < ActiveRecord::Base
  attr_accessible :name, :description, :image_url
  after_create :create_shower
  after_destroy :destroy_shower
  
  private
  def create_shower
    res = Net::HTTP.get(URI(Shower::API_IN+'namespace.add?namespace=room' + self.id.to_s))
    puts "room=" + self.id.to_s
  end
  def destroy_shower
    res = Net::HTTP.get(URI(Shower::API_IN+'namespace.remove?namespace=room' + self.id.to_s))
    puts "room=" + self.id.to_s
  end
end
