class ProgramsController < ApplicationController
  def index
    @programs = Program.page(params[:page]).per(10)

    render("programs/index.html.erb")
  end

  def show
    @program = Program.find(params[:id])

    render("programs/show.html.erb")
  end

  def new
    @program = Program.new

    render("programs/new.html.erb")
  end

  def create
    @program = Program.new

    @program.name = params[:name]
    @program.start_date = params[:start_date]
    @program.end_date = params[:end_date]
    @program.contact_id = params[:contact_id]
    @program.location = params[:location]
    @program.category = params[:category]

    save_status = @program.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/programs/new", "/create_program"
        redirect_to("/programs")
      else
        redirect_back(:fallback_location => "/", :notice => "Program created successfully.")
      end
    else
      render("programs/new.html.erb")
    end
  end

  def edit
    @program = Program.find(params[:id])

    render("programs/edit.html.erb")
  end

  def update
    @program = Program.find(params[:id])

    @program.name = params[:name]
    @program.start_date = params[:start_date]
    @program.end_date = params[:end_date]
    @program.contact_id = params[:contact_id]
    @program.location = params[:location]
    @program.category = params[:category]

    save_status = @program.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/programs/#{@program.id}/edit", "/update_program"
        redirect_to("/programs/#{@program.id}", :notice => "Program updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Program updated successfully.")
      end
    else
      render("programs/edit.html.erb")
    end
  end

  def destroy
    @program = Program.find(params[:id])

    @program.destroy

    if URI(request.referer).path == "/programs/#{@program.id}"
      redirect_to("/", :notice => "Program deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Program deleted.")
    end
  end
end
