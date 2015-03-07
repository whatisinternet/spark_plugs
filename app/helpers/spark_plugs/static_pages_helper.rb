module SparkPlugs
  module StaticPagesHelper
    def set_title
      @title = @static_page.title.to_s
    end
  end
end
