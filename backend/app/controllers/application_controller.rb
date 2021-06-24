class ApplicationController < Sinatra::Base
  register Sinatra::CrossOrigin

  configure do
    enable :cross_origin
    set :allow_origin, "*" 
    set :allow_methods, [:get, :post, :patch, :delete, :options] # allows these HTTP verbs
    set :expose_headers, ['Content-Type']
  end

  options "*" do
    response.headers["Allow"] = "HEAD,GET,PUT,POST,DELETE,OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
    200
  end

  get '/jives' do
    Jive.all.to_json({
    methods: [:total_likes, :total_dislikes]
    })
  end

  get '/user' do
    User.all.to_json
  end

  delete "/jives/:id" do
    # Dynamic URL
    jive = Jive.find(params[:id])
    jive.destroy
    jive.to_json
  end

  post "/login" do 
    user = User.find_by(username: params[:username], password: params[:password])

    if user.nil?
      {error: "Incorrect username or password"}.to_json
    end
    # else
    #   user.to_json(include: {:jives})
    # end
    #   name: params[:name], type: params[:type], post: params[:post], pics: params[:pics], url: params[:url], likes: params[:likes], dislikes: params[:dslikes]
  end

  post "/jives" do
    puts params.inspect
    jive_params = params.select do |key| 
      ["name", "post_type", "post", "pics", "url", "user_id"].include?(key)
    end
    jive = Jive.create(jive_params)
    jive.to_json
  end

  
end
