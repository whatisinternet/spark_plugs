#Big thanks to github.com/thoughtbot/high_voltage for this part

module SparkPlugs::SemiStatic
  extend ActiveSupport::Concern
    def show
      page = SparkPlugs::StaticPage.get_page(params[:page])
      if page
        @static_page = page
        expires_in 2.hours, :public => true
      else
        raise ActionController::RoutingError.new("That page could not be found by SparkPlugs")
      end
    end
    private
      # Only allow a trusted parameter "white list" through.
      def static_page_params
        params.require(:static_page).permit(:page, :title, :content)
      end



end
