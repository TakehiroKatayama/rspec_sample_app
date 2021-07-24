require 'rails_helper'

RSpec.describe 'Users', type: :request do
  # ***** 以下を追加 *****
  describe 'GET #index' do
    subject { get(users_path) }
    context 'ユーザーが存在するとき' do
      before { create_list(:user, 3) }
      it 'リクエストが成功する' do
        subject
        expect(response).to have_http_status(:ok)
      end

      it 'name が表示されている' do
        subject
        expect(response.body).to include(*User.pluck(:name))
      end
    end
  end
  # ***** 以上を追加 *****
end
