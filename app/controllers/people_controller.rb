class PeopleController < ApplicationController



    def index
      @people = Person.all
      # respond_to do |format|
      #   format.html { render :index }
      #   format.json { render json: @people }
      # end
      render json: @people

    end

    def show
      @post = Person.find(params[:id]);
      render json: @person
      # respond_to do |format|
      #   format.html { render :show }
      #   format.json { render json: @person }
      # end
    end

    def new
      @person = Person.new
    end

    def create
      @person = Person.create(name: params[:name], address: params[:address], city: params[:city], state: params[:state], zip: params[:zip] )
      render json: @person, status: 201
    end

    def destroy
      @person = Person.find(params[:id])
      @person.destroy
      # redirect_to root_path
      render json: @person
  end




  end
