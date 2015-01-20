class FilmsController < ApplicationController

  before_action :find_film, only: [:show, :create_film_checkout, :return_film]

  def index
    if params[:order].blank?
      @films = Film.by_rating
    else
      order = params[:order]
      @films = Film.order("#{order} DESC")
    end
  end

  def show
    @film_checkout = FilmCheckout.new
    @checkout_history = @film.film_checkouts
  end

  def create_film_checkout
    ActiveRecord::Base.transaction do
      checkout_time = DateTime.now

      FilmCheckout.create(film_id: @film.id,
                          user_id: params[:film_checkout][:user_id],
                          checkout_time: checkout_time,
                          return_time: nil)

      @film.update_attribute(:available, false)
    end
    redirect_to root_path
  end

  def return_film
    ActiveRecord::Base.transaction do
      return_time = DateTime.now
      film_return = @film.film_checkouts.where(return_time: nil).last

      film_return.update_attribute(:return_time, return_time)
      @film.update_attribute(:available, true)
    end
    redirect_to root_path
  end

  protected

  def find_film
    @film = Film.find(params[:id])
  end

  def film_params
    params.require(:film).permit(:title, :rating, :genre, :available)
  end

  def film_checkout_params
    params.require(:film_checkout).permit(:user_id, :film_id, :checkout_time, :return_time)
  end

end
