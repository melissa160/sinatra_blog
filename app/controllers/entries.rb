post '/' do 
  @entry = Entry.new(title: params[:title], body: params[:body])
  arr = params[:entry].split(', ')
  arr.each do |tag|
    tag = Tag.new(tag: tag)
    @entry.tags << tag
  end
  if @entry.save
    redirect '/'
  end
end

get '/:id/edit' do
  @entry = Entry.find_by(id: params[:id])
  erb :edit
end

get '/:id' do
  @entry = Entry.find_by(id: params[:id])
  erb :show
end

patch '/:id' do
  entry = Entry.find_by(id: params[:id])
  entry.update(title: params[:title], body: params[:body])
  redirect '/'
end

get "/:id/delete" do
  entry = Entry.find_by(id: params[:id])
  entry.destroy 
  redirect '/'
end
