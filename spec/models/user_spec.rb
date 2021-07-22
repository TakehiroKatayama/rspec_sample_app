require 'rails_helper'

RSpec.describe User, type: :model do
  context 'データが条件を満たすとき' do
    it '保存できる' do
      user = build(:user)
      expect(user.valid?).to eq true
    end
  end

  context 'name が空のとき' do
    it 'エラーが発生する' do
      user = build(:user, name: '')
      expect(user.valid?).to eq false
      expect(user.errors.messages[:name]).to include 'を入力してください'
    end
  end
end
