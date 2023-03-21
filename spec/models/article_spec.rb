require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "Attributes" do
    it { should have_db_column(:title).of_type(:string) }
    it { should have_db_column(:body).of_type(:text) }
    it { should have_db_column(:status).of_type(:string) }
  end

  it do
    expect(Article.count).to eq 0
  end

  context "with articles" do
    it do
      Article.create(title: 'article 1', body: 'article 1', status: 'public')
      expect(Article.count).to eq 1
    end
  end
end
