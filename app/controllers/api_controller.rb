class ApiController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:create_post, :create_comment]

  def create_post
    post = Post.new
    post.title = JSON.parse(request.raw_post)['title']
    post.user = User.find_by(name: JSON.parse(request.raw_post)['user'])
    post.save

    puts "in create_post"

    respond_to { |format|
      format.json { render :json => { :status => "Create post success", :title => post.title }, status => 200 }
    }
  end

  def create_comment
    respond_to { |format|
      format.json { render :json => { :status => "Create comment success" }, status => 200 }
    }
  end

  def get_posts
    respond_to { |format|
      format.json { render :json => { :status => "all posts are here" }, status => 200 }
    }
  end
end
