class Bookmarks < Sinatra::Base

  before do
    @user ||= User.first(id: session[:user_id])
  end

  get '/links' do
    if @user
      @links = @user.links
    else
      @links = []
    end
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new_link'
  end

  post '/links' do
    link = Link.create(url: params[:url], title: params[:title], user_id: @user.id)

    params[:tags].split.each do |tag|
      link.tags << Tag.first_or_create(name: tag)
    end

    link.save
    redirect '/links'
  end

end
