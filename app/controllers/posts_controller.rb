class PostsController < ApplicationController


    def main
    end
    
#####################  1 ########################################
    def new
    end
    
    def create
        
        #입력받은 데이터를 실제 db에 저장할 액션
        @post = Post.new 
        @post.title = params[:input_title]
        @post.place = params[:input_place]
        @post.image = params[:input_image]
        @post.content = params[:input_content]
        @post.save
        redirect_to "/posts/show/#{@post.id}"
    end
    
    def index
       @posts = Post.all 
    end
    
    
    def show
        @post = Post.find(params[:post_id])
    end
    
    
#####################  2  ########################################    

    def create2
       #버튼만 누르면 정보를 받아와 db2에 저장되게 하는 액션
      
       @post2 = Post2.new
       @post2.title = Post.find(params[:post_id]).title
       @post2.place = Post.find(params[:post_id]).place
       @post2.image = Post.find(params[:post_id]).image
       @post2.content = Post.find(params[:post_id]).content
       
       
       @post2.save
       redirect_to "/posts/index"
        
    end    
    
    
    def index2
       @post2s = Post2.all 
       @post3s = Post3.all
    end
    


#####################  3  ########################################
    def index3
     #####???######
    end



    def create3
          
        
          if(Post3.all[0]==nil) then @post3=Post3.new
       else  @post3 = Post3.all
             @post3 = @post3[0]
         end 
         
       if (@post3.title1==nil) then @post3.title1 = Post2.find(params[:post2_id]).title 
       elsif (@post3.title2==nil) then  @post3.title2 = Post2.find(params[:post2_id]).title
       elsif (@post3.title3==nil) then  @post3.title3 = Post2.find(params[:post2_id]).title
       elsif (@post3.title4==nil) then  @post3.title4 = Post2.find(params[:post2_id]).title
       else  @post3.title5 = Post2.find(params[:post2_id]).title
        end
        
       if(@post3.place1==nil) then @post3.place1 = Post2.find(params[:post2_id]).place
       elsif(@post3.place2==nil) then @post3.place2 = Post2.find(params[:post2_id]).place
       elsif(@post3.place3==nil) then @post3.place3 = Post2.find(params[:post2_id]).place
       elsif(@post3.place4==nil) then @post3.place4 = Post2.find(params[:post2_id]).place
       else  @post3.place5 = Post2.find(params[:post2_id]).place
       end 
       
       if(@post3.image1==nil) then @post3.image1 = Post2.find(params[:post2_id]).image
       elsif(@post3.image2==nil) then @post3.image2 = Post2.find(params[:post2_id]).image
       elsif(@post3.image3==nil) then @post3.image3 = Post2.find(params[:post2_id]).image
       elsif(@post3.image4==nil) then @post3.image4 = Post2.find(params[:post2_id]).image
       else  @post3.image5 = Post2.find(params[:post2_id]).image
       end 

    #   @post3.memo
       
       @post3.save
       redirect_to "/posts/index2"    
        
    
    end
    
    
    def show3
    #####???######
    end
    
    
    
    def destroy3
        @post3 = Post3.find(params[:post3_id])
        @post3.destroy #???걍3붙ㅇ야대나
       redirect_to "/posts/index2"
    
    
    end
    
#####################  4  ########################################    

      def create4
      
       @post4 = Post4.new
       @post4.title1 = Post3.find(params[:post3_id]).title1
       @post4.image1 = Post3.find(params[:post3_id]).image1
       @post4.title2 = Post3.find(params[:post3_id]).title2
       @post4.image2 = Post3.find(params[:post3_id]).image2
       @post4.title3 = Post3.find(params[:post3_id]).title3
       @post4.image3 = Post3.find(params[:post3_id]).image3
       @post4.title4 = Post3.find(params[:post3_id]).title4
       @post4.image4 = Post3.find(params[:post3_id]).image4
       @post4.title5 = Post3.find(params[:post3_id]).title5
       @post4.image5 = Post3.find(params[:post3_id]).image5
       
       
       @post4.save
       redirect_to "/posts/index2"
    
    
    end
    
    
    def index4  
    #####???######
    end
    
    def show4
    #####???######
    end


end
