# ASSESSMENT 6: Rails Commenting Challenge

# Add comments to the Rails Blog Post Challenge
# Explain the purpose and functionality of the code directly below the 10 comment tags


# FILE: app/controller/blog_posts_controller.rb

# 1) defining the controller for a model of Blog Posts that is inheriting from the Application Controller using class inheritance.
class BlogPostsController < ApplicationController
  def index
    # 2) creating an instance variable called posts that houses an active record query that will get all the items in the BlogPost table.
    @posts = BlogPost.all
  end

  def show
    # 3) creating an instance variable called post that houses an active record query that will get an item with a particular id (passed as a parameter) in the BlogPost table.
    @post = BlogPost.find(params[:id])
  end

  # 4) defining a method for showing the user a page to create a new post. This is named "new" according to our rails routes defined either manually in routes, or through the use of a resource.
  def new
    @post = Post.new
  end

  def create
    # 5) creating an instance variable called post that houses an active record query that will create a new item in the blog post table with the given parameters. The parameters are passed through strong params, to make sure they are the desired parameters.
    @post = BlogPost.create(blog_post_params)
    if @post.valid?
      redirect_to blog_post_path(@post)
    else
      redirect_to new_blog_post_path
    end
  end

  def edit
    @post = BlogPost.find(params[:id])
  end

  def update
    @post = BlogPost.find(params[:id])
    # 6) creating an instance variable called post that houses an active record query that will update an item in the blog post table with the given parameters. The parameters are passed through strong params similiarly to the create method.
    @post.update(blog_post_params)
    if @post.valid?
      redirect_to blog_post_path(@post)
    else
      redirect_to edit_blog_post_path
    end
  end

  def destroy
    @post = BlogPost.find(params[:id])
    if @post.destroy
      redirect_to blog_posts_path
    else
      # 7) This line redirects the page to a different route according to it's alias. The alias is appended with "_path" (defined in routes) and given the same active record information as before. This only happens if the destroy method is unsuccesful. 
      redirect_to blog_post_path(@post)
    end
  end

  # 8) When the `private` keyword is used, any method below it has it's scope limited to the class it's in. These strong params can't be used outside this controller. 
  private
  def blog_post_params
    # 9) This line makes it so that anytime blog_post_params is used as an argument, it will require that it is passed an object named blog_post that has the parameters title and content. No other parameters may be entered. 
    params.require(:blog_post).permit(:title, :content)
  end

end


# FILE: app/models/blog_post.rb

class BlogPost < ApplicationRecord
  # 10) This is the association. It describes the relationships between tables. This connects the parent: "blog post" with many children: "comments". 
  has_many :comments
end
