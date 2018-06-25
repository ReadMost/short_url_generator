class LinksController < ApplicationController
  
  def new
    @links = Link.all
    @link = Link.new

  end

  def create
    @link = Link.new(link_params)
    if @link.save
      @short_url = short_url(@link.id)
      @link.update_attribute(:new_link, @short_url)
      redirect_to root_path
    else 
      @links = Link.all
      render 'new'
    end

  end

  def redirect
    @t_id = params[:id]
    @long = Link.find_by(new_link: "rauan/" + @t_id)
    redirect_to @long.old_link

  end

  private
  def link_params
    params.require(:link).permit(:old_link)
  end
  def short_url(id)
    return 'rauan/' + id.to_s(34)
  end
end
