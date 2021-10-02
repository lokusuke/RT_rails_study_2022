class Tweet < ApplicationRecord
    belongs_to :user
    has_many :favorites
    has_many :comments
    
    #あるtweetに対して、(自分がログインしている)userがお気に入り登録しているかどうかをみている
    #もっと正確にいうと、あるtweet_idに対してお気に入り登録しているuser_idがfavoritesテーブルに存在しているかどうかをみている
    def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end
end
