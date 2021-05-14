# app/controllers/photo_controller.rb
class PhotoController < ApplicationController

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def store
    # upload image to cloudinary
    @value = Cloudinary::Uploader.upload(params[:image])
    # create a new post object and save to db
    @post = Post.new({:link => @value['secure_url'], :caption => params[:caption], :tags => params[:tags]})
    if @post.save
      # broadcasting posts using pusher
      Pusher.trigger('posts-channel','new-post', {
        link: @post.link,
        caption: @post.caption,
        tags: @post.tags
      })
    end 
    redirect_to('/')
  end
end