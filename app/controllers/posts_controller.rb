class PostsController < ApplicationController
    def index
        @posts=Post.paginate(:page => params[:page], :per_page => 3).order('created_at DESC')
        respond_to do |format|
            format.html
            format.json  { render json: {entries: render_to_string(partial: "post", formats: [:html]), newNav: view_context.will_paginate(@posts)}}
        end
    end

    def show
        @post=Post.find(params[:id])
    end

    def new
    end

    def edit
        @post=Post.find(params[:id])
    end

    def create
        @post = Post.new(post_params)   
        @post.save
        redirect_to @post
    end
    def update
        @post=Post.find(params[:id])
        @post.update(post_params)
        redirect_to @post

    end
    def destroy
        @post=Post.find(params[:id])
        @post.destroy 
        redirect_to posts_path
    end

    private
     def post_params
        params.require(:post).permit(:title, :dec, :image)
     end

end
