require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  describe 'ユーザー新規登録できない場合' do
    it 'nicknameが空だと登録できないこと' do
      @user.nickname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include "Nickname can't be blank"
    end
    it 'emailが空だと登録できないこと' do
      @user.email = ''
      @user.valid?
      expect( @user.errors.full_messages).to include "Email can't be blank"
    end
  end
end
