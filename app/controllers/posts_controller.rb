# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :find_post, only: %i[show edit update destroy]
  before_action :authenticate_user!, only: %i[new create edit update destroy]

  def index
    @posts = Post.includes(:category).where('published <= ?', Date.today).order('published DESC').paginate(page: params[:page], per_page: 6)

    @posts = @posts.search(params[:search]) if params[:search]
  end

  def show
    @post = Post.friendly.find(params[:id])
  end

  def new
    @post = Post.new
    find_categories
  end

  def create
    @post = Post.new(post_params)
    @subscribers = Subscriber.all

    if @post.save
      scheduled_time = Time.zone.now
      @subscribers.each do |subscriber|
        if subscriber.subscription
          NotificationMailer.post_email(subscriber, @post).deliver_later(wait_until: scheduled_time)
        end

        scheduled_time += 15.minutes
      end
      redirect_to @post
    else
      render 'new'
    end
  end

  def edit
    find_categories
  end

  def update
    @post.assign_attributes(post_params)

    @post.cover = @post.cover[:original] if post_params[:cover].nil?

    if @post.save
      redirect_to @post, notice: 'Update successful!'
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path, notice: 'Post destroyed'
  end

  private

  def post_params
    params.require(:post).permit(
      :title, :content, :category_id, :cover, :published, :introduction,
      :crop_x, :crop_y, :crop_width, :crop_height,
      :crop_rectangle_x, :crop_rectangle_y, :crop_rectangle_width, :crop_rectangle_height
    )
  end

  def find_post
    @post = Post.friendly.find(params[:id])
  end

  def find_categories
    @category = Category.where.not(ancestry: nil)
  end
end
