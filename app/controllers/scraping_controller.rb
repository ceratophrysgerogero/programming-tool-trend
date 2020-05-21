class ScrapingController < ApplicationController

  def index
    scraping
  end

  def scraping(first_page,next_page)
    #ブラウザの立ち上げ
    agent = Mechanize.new
    #webサイトにアクセスするためのプログラムを指定する
    agent.user_agent = 'Mac Safari'
    page = agent.get('https://doda.jp/DodaFront/View/JobSearchList.action?did=T000001&charset=SHIFT-JIS&fktt=4&kk=2&sid=TopSearch&k=ruby&oc=&pr=&ha=')
    companys = []
    page.search('//*[@id]/span[1]/text()').each do |company|
      companys.push(company.text)
    end
  end

end
