class Users::InvitationsController < Devise::InvitationsController
  def update
    if this
      redirect_to edit_user_registration_path
    else
      super
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user, notice: "Your account was created!"
    else
      render :new
    end
  end

  def new
    @user = User.new
  end

  def invite_user
    @user = User.new(params[:email])
    @user = User.invite!({:email => params[:user][:email], :name => params[:user][:name]}, current_user)
    render :json => @user
  end

  def accept_invitation
    User.accept_invitation!(:invitation_token => params[:invitation_token], :password => "ad97nwj3o2", :name => "John Doe")
  end
end
