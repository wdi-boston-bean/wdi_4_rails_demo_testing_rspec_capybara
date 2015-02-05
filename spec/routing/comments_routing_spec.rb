require 'rails_helper'

RSpec.describe 'routes articles/1/comments to route to comment controller' do
   it 'routes GET /articles/1/commments to the comments controller' do
    expect(get('/articles/1/comments')).to route_to('comments#index', article_id: '1')
  end

   it 'routes GET /articles/1/comments/new to the comments controller' do
    expect(get('/articles/1/comments/new')).to route_to('comments#new', article_id: '1')
  end

  it 'routes POST /articles/1/comments to the comments controller' do
    expect(post('/articles/1/comments')).to route_to('comments#create', article_id: '1')
  end

end

# get '/articles/:id/comments', to: 'articles#show'
#can hard code ids in spec bc it is testing the parsing and routing of the string passed

