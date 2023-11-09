class Topic3sController < ApplicationController
    def index
    end
    def new
      @topic3 = Topic3.new
    end
    def show
      @topic3 = Topic3.find_by(id: params[:id])
      @topic4 = Topic4.new
    end
    def create
      @topic3 = Topic3.new(topic3_params)
      if @topic3.save
          flash[:notice] = "診断が完了しました"
          redirect_to topic3_path(@topic3.id)
      else
          redirect_to :action => "new"
      end
    end
  private
    def topic3_params
        params.require(:topic3).permit(:id, :question3)
    end
end
