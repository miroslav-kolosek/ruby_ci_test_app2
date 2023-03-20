require 'rails_helper'

RSpec.describe Article, type: :model do
  it do
    expect(Article.count).to be 0
  end
end
