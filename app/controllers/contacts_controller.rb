class ContactsController < ApplicationController
  def index
    @q = Contact.ransack(params[:q])
    @contacts = @q.result(:distinct => true).includes(:programs, :company, :source).page(params[:page]).per(10)

    render("contacts/index.html.erb")
  end

  def show
    @program = Program.new
    @contact = Contact.find(params[:id])

    render("contacts/show.html.erb")
  end

  def new
    @contact = Contact.new

    render("contacts/new.html.erb")
  end

  def create
    @contact = Contact.new

    @contact.first_name = params[:first_name]
    @contact.last_name = params[:last_name]
    @contact.company_id = params[:company_id]
    @contact.source_id = params[:source_id]
    @contact.bio = params[:bio]
    @contact.linkedin = params[:linkedin]
    @contact.twitter = params[:twitter]
    @contact.title = params[:title]
    @contact.email = params[:email]
    @contact.phone = params[:phone]
    @contact.image = params[:image]
    @contact.notes = params[:notes]
    @contact.pilots = params[:pilots]

    save_status = @contact.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/contacts/new", "/create_contact"
        redirect_to("/contacts")
      else
        redirect_back(:fallback_location => "/", :notice => "Contact created successfully.")
      end
    else
      render("contacts/new.html.erb")
    end
  end

  def edit
    @contact = Contact.find(params[:id])

    render("contacts/edit.html.erb")
  end

  def update
    @contact = Contact.find(params[:id])

    @contact.first_name = params[:first_name]
    @contact.last_name = params[:last_name]
    @contact.company_id = params[:company_id]
    @contact.source_id = params[:source_id]
    @contact.bio = params[:bio]
    @contact.linkedin = params[:linkedin]
    @contact.twitter = params[:twitter]
    @contact.title = params[:title]
    @contact.email = params[:email]
    @contact.phone = params[:phone]
    @contact.image = params[:image]
    @contact.notes = params[:notes]
    @contact.pilots = params[:pilots]

    save_status = @contact.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/contacts/#{@contact.id}/edit", "/update_contact"
        redirect_to("/contacts/#{@contact.id}", :notice => "Contact updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Contact updated successfully.")
      end
    else
      render("contacts/edit.html.erb")
    end
  end

  def destroy
    @contact = Contact.find(params[:id])

    @contact.destroy

    if URI(request.referer).path == "/contacts/#{@contact.id}"
      redirect_to("/", :notice => "Contact deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Contact deleted.")
    end
  end
end
