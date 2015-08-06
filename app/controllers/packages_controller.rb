class PackagesController < ApplicationController
  def index
    @package = Package.last
  end

  def new
    @package = Package.new
  end

  def create
    @package = Package.new(params.require(:package).permit(:name, :image))

    if @package.save
      flash[:notice] = "Package successfully created"
      redirect_to packages_path
    end
  end
end
