Rails.application.routes.draw do

  namespace 'api' do
    namespace 'v1' do
      get 'get_by_title' => 'api#get_by_title', defaults: {format: :json}
      get 'get_by_author' => 'api#get_by_author', defaults: {format: :json}
      get 'get_by_class_number' => 'api#get_by_class_number', defaults: {format: :json}
    end
  end

end
