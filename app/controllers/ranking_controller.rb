class RankingController < ApplicationController
  def show
  end

  def have
    @ranking =
    Ownership.where(type:"Have").group(:item_id).order('count_item_id desc').limit(10).count('item_id').keys
  end

  def want
    @ranking =
    Ownership.where(type:"Want").group(:item_id).order('count_item_id desc').limit(10).count('item_id').keys
  end
end
