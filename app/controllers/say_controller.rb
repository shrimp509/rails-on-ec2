class SayController < ApplicationController
  def create
    puts "in SayController's create method"
  end

  def hello
    @time = Time.now
    @files = Dir.glob('*')
    @user = User.find(2)
  end

  def goodbye
  end
end
