get '/' do
  @notes = Note.all
  erb :index
end

get '/edit/:id' do
  @note = Note.find(params[:id])
  erb :edit
end

put '/edit/:id' do
  p params[:id]
  Note.update
  p params[:note_title]
  p params[:note_content]
  redirect '/'
end

get '/info' do
  Demo.new(self).info
end

get '/new' do
  erb :new
end

post '/new' do
  @title = params[:note_title]
  @content = params[:note_content]
  Note.create(title: @title, content: @content)
  redirect "/"
end
