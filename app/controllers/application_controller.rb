class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :seo

  def seo
    set_meta_tags :description => "Mixez votre muesli préféré"
    set_meta_tags :site => "DearMuesli", :title => "Mixez votre muesli préféré"
    set_meta_tags :keywords => %w[muesli recette crunchy petit-dejeuner snack]
    set_meta_tags :noindex => false
    set_meta_tags :nofollow => false
    # set_meta_tags :canonical => url_for(only_path: false)
    set_meta_tags :author => 'http://www.occuly.me'
    set_meta_tags :twitter => {
                      :card => "DearMuesli - Mixez votre muesli préféré",
                      :site => '@DearMuesli'
                  }

    set_meta_tags :og => {
                      :site_name => 'DearMuesli',
                      :title => "Mixez votre muesli préféré",
                      :description => "Mixez votre muesli préféré",
                      :type => 'website',
                      :url => root_url,
                      :image => ActionController::Base.helpers.image_url('dearmuesli-promo.jpg'),
                      'image:type' => 'image/png',
                      :locale => 'fr_FR'
                  }
  end
end
