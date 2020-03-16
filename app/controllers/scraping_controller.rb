class ScrapingController < ApplicationController

  def index
    agent = Mechanize.new
    page = agent.get("http://sample.com/")
    @elements = page.search('p') # h2要素を検索
  end

end
