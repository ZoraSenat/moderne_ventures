class IndustriesController < ApplicationController
  def index
    @industries = Industry.all

    render("industries/index.html.erb")
  end

  def show
    @industry = Industry.find(params[:id])

    render("industries/show.html.erb")
  end

  def new
    @industry = Industry.new

    render("industries/new.html.erb")
  end

  def create
    @industry = Industry.new

    @industry.industry = params[:industry]

    save_status = @industry.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/industries/new", "/create_industry"
        redirect_to("/industries")
      else
        redirect_back(:fallback_location => "/", :notice => "Industry created successfully.")
      end
    else
      render("industries/new.html.erb")
    end
  end

  def edit
    @industry = Industry.find(params[:id])

    render("industries/edit.html.erb")
  end

  def update
    @industry = Industry.find(params[:id])

    @industry.industry = params[:industry]

    save_status = @industry.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/industries/#{@industry.id}/edit", "/update_industry"
        redirect_to("/industries/#{@industry.id}", :notice => "Industry updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Industry updated successfully.")
      end
    else
      render("industries/edit.html.erb")
    end
  end

  def destroy
    @industry = Industry.find(params[:id])

    @industry.destroy

    if URI(request.referer).path == "/industries/#{@industry.id}"
      redirect_to("/", :notice => "Industry deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Industry deleted.")
    end
  end
end
