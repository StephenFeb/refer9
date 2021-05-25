class CvsController < ApplicationController

def index
    @cvs = Cv.all
end

def new
    @cv = Cv.new
end
      
def create
    @cv = Cv.new(resume_params)

        if @cv.save
          redirect_to cvs_path, notice: "Your resume #{@cv.title} has been uploaded."
        else
          render "new"
        end
end

def destroy
    @cv = CV.find(params[:id])
    @cv.destroy
    redirect_to cvs_path, notice:  "The resume #{@cv.title} has been deleted."
end

private

def resume_params
    params.require(:cv).permit(:title, :resume)
end


end
