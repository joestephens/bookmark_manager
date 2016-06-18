class Bookmarks < Sinatra::Base

  get '/users/new' do
    erb :'users/new'
  end

  post '/users' do
    user = User.create(email: params[:email],
                       password: params[:password],
                       password_confirmation: params[:password_confirmation])
    if user.save
      session[:user_id] = user.id
      redirect to('/links')
    else
      flash.now[:errors] = user.errors.full_messages
      erb :'users/new'
    end
  end

  delete '/users' do
    session[:user_id] = nil
    flash.keep[:notice] = 'Goodbye!'
    redirect to '/links'
  end

  get '/users/sign-in' do
    erb :'users/sign_in'
  end

  post '/users/sign-in' do
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect to '/links'
    else
      flash.now[:errors] = ['The email or password is incorrect.']
      erb :'users/signin'
    end
  end

end
