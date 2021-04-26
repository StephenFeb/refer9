class OrganisationsController < ApplicationController

def index
    @organisations = Organisation.all.order("created_at DESC")
end

def new
    @organisation = Organisation.new
end

def show
end

def edit
end

def update
    respond_to do |format|
        if @organisation.update(organisation_params)
          format.html { redirect_to @organisation, notice: 'Organisation was successfully updated.' }
          format.json { render :show, status: :ok, location: @organisation }
        else
          format.html { render :edit }
          format.json { render json: @organisation.errors, status: :unprocessable_entity }
        end
    end
end

def create
    @organisation = Organisation.new(organisation_params)
    @organisation.user = current_user
    
    respond_to do |format|
      if @organisation.save
        format.html { redirect_to @organisation, notice: 'Organisation was successfully created.' }
        format.json { render :show, status: :created, location: @organisation }
      else
        format.html { render :new }
        format.json { render json: @organisation.errors, status: :unprocessable_entity }
      end
    end
end

def destroy
    @organisation.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Organisation was successfully destroyed.' }
      format.json { head :no_content }
    end
end

private

def organisation_params
    params.require(:job).permit(:name, :description, :employees)
  end

end
