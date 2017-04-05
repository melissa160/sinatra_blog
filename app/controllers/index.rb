
get '/' do
  @entries = Entry.all
  @tags = Tag.all
  erb :index
end