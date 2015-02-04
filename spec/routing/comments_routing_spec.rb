require 'rails_helper'

RSpec.describe 'routes articles/1/comments to route to comment controller' do
   it 'routes GET /articles/1/commments to the comments controller' do
    expect(get('/articles/1/comments')).to route_to('comments#index', article_id: '1')
  end
end

#can hard code ids in spec bc it is testing the parsing and routing of the string passed