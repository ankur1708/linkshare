class UpvotePostsController < ApplicationController
  def create
    if current_user
      post = UpvotePost.find(:first, :conditions => { :user_id => current_user.id, :post_id => params[:post_id] })
      if post
        flash.keep[:notice] = 'Already added into seen'
       else
         post = UpvotePost.new
         post.user_id = current_user.id
         post.post_id = params[:post_id]
         post.save
      end
      else
        flash.keep[:notice] = 'Login first'
    end
    redirect_to :back
  end
end
