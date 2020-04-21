module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_title_defaults
  end

  def set_title_defaults
    @page_title = "Riza Khan Porfolio | Portfolio Website"
    @seo_keywords = "RIza Khan Portfolio"
  end
end