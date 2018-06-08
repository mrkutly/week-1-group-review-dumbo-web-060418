# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
require 'pry'

class User

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def photos
    Photo.all.select { |photo| photo.user == self }
  end

end


class Photo

  @@all = []
  attr_accessor :user

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def comments
    Comment.all.select { |comment| comment.photo == self }
  end

  def make_comment(text)
    Comment.new(text, self)
  end

end


class Comment

  @@all = []
  attr_accessor :photo, :text

  def initialize(text, photo)
    @text = text
    @photo = photo
    @@all << self
  end

  def self.all
    @@all
  end

end



photo = Photo.new
user = User.new("Sophie")
photo.user = user
puts photo.user.name
# => "Sophie"
puts user.photos
# => [<photo 1>]


puts photo.comments
# => []

puts photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
puts photo.comments
# => [<comment1>]

Comment.all
#=> [<comment1>]
binding.pry
