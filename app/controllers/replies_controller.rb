class RepliesController < ApplicationController
    
       def create
        @post4 = Post4.find(params[:post4_id])
        @reply = @post4.replies.create(reply_params)
         redirect_to :controller => 'posts', :action => 'show3' 
    end
    
 
    
    def destroy
        @post4 = Post4.find(params[:post4_id])
        @reply = @post4.replies.find(params[:id])
        @reply.destroy
        redirect_to :controller => 'posts', :action => 'show3' 
    end
    
    private
    def reply_params
        params.require(:reply).permit(:title, :image)
    end
    
    
end
