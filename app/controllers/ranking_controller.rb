class RankingController < ApplicationController
  def show
  end

  def have
    @title = 'Haveランキング'
    ranking = Have.group(:item_id).order('count_item_id desc').limit(10).count('item_id').keys
    @items = Item.find(ranking).sort_by{|o| ranking.index(o.id)}
    render 'show'
  end

  def want
    @title = 'Wantランキング'
    ranking = Want.group(:item_id).order('count_item_id desc').limit(10).count('item_id').keys
    @items = Item.find(ranking).sort_by{|o| ranking.index(o.id)}
    render 'show'
  end
end
