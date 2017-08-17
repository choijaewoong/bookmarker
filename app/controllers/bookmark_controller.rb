class BookmarkController < ApplicationController
    def index
        @user = current_user
        @categories = @user.categories
        
    end

    def addBookmark
        @user = current_user
        begin
            link = LinkThumbnailer.generate(params[:title])
                    bookmark = Bookmark.new(category_id: params[:categoryId],
                                            title: link.title,
                                            link: params[:title],
                                            img_url: link.images.first.src.to_s)
            bookmark.save
            render :json => {:isSuccess => true,
                         :title => bookmark.title,
                         :link => bookmark.link,
                         :img_url => bookmark.img_url}
        rescue LinkThumbnailer::Exceptions => e
            # do something
            render :json => {:issSuccess => false}
        end
    end
    
end
