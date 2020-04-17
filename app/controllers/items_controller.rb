class ItemsController < ApplicationController
  # before_action :set_item
  # before_action :move_to_login, only:[:index, :pay, :buy_complete, ]

  def index
   @items = Item.includes(:images).order('created_at DESC')
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def buy_confirmation
    # @item = Product.find(params[:id])
    # card = Card.where(user_id: current_user.id).first
    # @ptem_image = ItemImage.where(item_id: @item.id)
    # #登録された情報がない場合にカード登録画面に移動
    # if card.blank?
    #   redirect_to new_card_path
    # else
    #   #保管した顧客IDでpayjpから情報取得
    #   Payjp.api_key = "sk_test_0d9443b9a1a637b9456b6f24"
    #   #保管したカードIDでpayjpから情報取得、カード情報表示のためインスタンス変数に代入
    #   customer = Payjp::Customer.retrieve(card.customer_id)
    #   @default_card_information = customer.cards.retrieve(card.card_id)
    # end 
  end

  def payment
    # card = set_card
    # Payjp.api_key = Rails.application.credentials.dig(:payjp, :PAYJP_SECRET_KEY)
    # Payjp::Charge.create(
    # amount: @item.price, 
    # customer: card.customer_id, 
    # currency: 'jpy', 
    # )
    # redirect_to action: 'buy_complete'


    # @item = Item.find(params[:id])
    # card = Card.where(user_id: current_user.id).first
    # Payjp.api_key = 'sk_test_0d9443b9a1a637b9456b6f24'
    #  payjp = Payjp::Charge.create(
    #   amount: @item.price, 
    #   customer: card.customer_id, 
    #   currency: 'jpy', 
    # )
      #aya how to define sold
  #   @Item.solder_id = "2"
  #   @item.save
  #   redirect_to action: 'buy_complete'
  # end
  end

  def buy_complete
  end

end