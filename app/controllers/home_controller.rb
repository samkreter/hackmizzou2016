class HomeController < ApplicationController


  def index
    @sponsor_url = Template.last.try(:url) || Rails.public_path.join('/HackMizzouSponsor.pdf')
  end

  def template

    pass = params["pass"]

    if pass === ENV["TEMPLATE_PASS"]
      url = params["url"]

      template = Template.last
      template = Template.create(:url => url) unless template

      template.url = params["url"]
      template.save
    end

    render :json => template
  end

end
