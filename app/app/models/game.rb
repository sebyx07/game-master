# == Schema Information
#
# Table name: games
#
#  id         :bigint           not null, primary key
#  game_type  :string           not null
#  iframe_url :text             not null
#  title      :string           not null
#  title_url  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_games_on_title_url  (title_url) UNIQUE
#
class Game < ApplicationRecord
  validates :title, presence: true
  validates :title_url, presence: true, uniqueness: true
  validates :iframe_url, presence: true, url: { no_local: true }

  before_validation :generate_title_url

  str_enum :game_type, %i(first)

  def generate_title_url
    self.title_url = title.parameterize
  end

  rails_admin do
    list do
      field :id
      field :title
      field :title_url
      field :game_type
      field :created_at
    end

    create do
      field :title
      field :iframe_url

      field :game_type , :enum do
        enum do
          Game.game_types
        end
      end
    end

    edit do
      field :title
      field :iframe_url

      field :game_type , :enum do
        enum do
          Game.game_types
        end
      end
    end
  end
end
