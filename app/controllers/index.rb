get '/' do
  # Look in app/views/index.erb
  @categories = Category.all
  erb :index
end

get '/category' do
  @category_id = params[:id]
  @category_name = Category.where(:id => @category_id).first[:title]
  @posts = Post.where(:category_id => @category_id)
  @title = @category_name

  erb :category
end

get '/post' do
  @post_id = params[:id]
  @post = Post.where(:id => @post_id).first
  @title = @post.title
  erb :post
end

get '/post_something' do
  erb :create_post
end

