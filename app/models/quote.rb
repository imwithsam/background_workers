class Quote < ActiveRecord::Base
  def self.generate
    10000.times do
      Quote.create(
        body:   Faker::Hacker.say_something_smart.capitalize,
        author: Faker::Name.name,
        title:  Faker::Name.title
      )
    end
  end
end
