class PostsController < ApplicationController
    def index
        @post=Post.all
    end
    def show
        @post=Post.find(post_params)
    end
    def new
    end
    def edit
        @post=Post.find(params[:id])
    end
    def create
        @post = Post.new(list_params)   
         @post.save
         redirect_to @post
    end

    private
     def post_params
        params.require(:post).permit(:title, :des)
     end

end
