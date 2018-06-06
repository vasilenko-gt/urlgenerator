module MainSettings

  extend ActiveSupport::Concern

  included do

    respond_to :html, :js, :json

  end

end