get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/new_file' do

  @file = AudioFile.new(params[:file])

  if File.extname(@file) == ".wav" && @file.save
    redirect to("/file_recommendation")
  else
    @errors = @file.errors.messages
    erb :index
  end

end

get '/file_recommendation' do


end
