class WelcomeController < ApplicationController
  def index
  end

  def login

    puts "*******===========********"
    puts params

    # example = login_params
    user = params[:owner][:username]
    pass = params[:owner][:password]

    owner = Owner.find_by_username(user)

    if !owner.nil?
      if owner.password == pass
        render json: '{"status":"ok", "owner_id": 1}'
      else
        render json: '{"status":"Wrong password"}'
      end
    else
      render json: '{"status":"Unknown user"}'
    end
    # #login = Owner.find_by(username: params["Owner"][:username])
    #
    # if !login.nil? && login.password == example["password"]
    #   render json: '{"status":"ok", "owner_id": 1}'
    # else
    #   render json: '{"status":"Not cool bro"}'
    # end
  end

  def register
  end

  def logout
  end

  def update
  end

  private
  def login_params
    params.permit(:username, :password)
  end
end
