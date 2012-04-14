ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Source: http://stuartmackey.tumblr.com/post/18545015254/unit-testing-with-mongoid
  # A logic to clean up the test db's collections.
  teardown :clean_mongodb
  def clean_mongodb
    Mongoid.database.collections.each do |collection|
      unless collection.name =~ /^system\./
        collection.remove
      end
    end
  end
end
