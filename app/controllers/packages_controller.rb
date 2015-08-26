class PackagesController < ApplicationController
  def index
    @package = Package.last
  end

  def new
    @package = Package.new
  end

  def create
    @package = Package.new(params[:package])

    if @package.save
      flash[:notice] = "Package successfully created"
      redirect_to packages_path
    end
  end
end
