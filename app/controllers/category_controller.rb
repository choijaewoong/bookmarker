class CategoryController < ApplicationController

    def addCategory
        @user = current_user

        colors = ['#ff5000', '#008000', '#f00000', '#333', '#fff000']
        color = colors.sample

        category = Category.new(user_id: @user.id,
                                color: color,
                                title: params[:title])
        category.save
        render :json => {:isSuccess => true,
                         :id => category.id,
                         :color => color,
                         :title => category.title}
    end

    def modifyCategory
        
        category = Category.find(params[:id])
        category.title = params[:title]
        category.save

        render :json => {:title => category.title}
    end

    def filterCategory
    end

    
end
