class Topic2sController < ApplicationController
    def index
    end
    def new
      @topic2 = Topic2.new
    end
    def show
      @topic2 = Topic2.find_by(id: params[:id])
      @topic3 = Topic3.new
    end
    def create
      @topic2 = Topic2.new(topic2_params)
      if @topic2.save
          flash[:notice] = "診断が完了しました"
          redirect_to topic2_path(@topic2.id)
      else
          redirect_to :action => "new"
      end
    end
  private
    def topic2_params
        params.require(:topic2).permit(:id, :question2)
    end
end
