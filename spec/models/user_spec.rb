require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  describe 'ユーザー新規登録' do
    context '新規登録ができる場合' do
      it '新規登録ができる' do
        expect(@user).to be_valid
      end
      it 'nicknameが15文字以下であれば登録できる' do
      end
      it 'passwordとpassword_confirmationが6文字以上であれば登録できる' do
      end
    end
    context '新規登録ができない場合' do
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
      it 'passwordが空では登録できない' do
      end
      it 'passwordが存在してもpassword_confirmationが空では登録できない' do
      end
      it 'nicknameが7文字以上では登録できない' do
      end
      it '重複したemailが存在する場合登録できない' do
      end
      it 'passwordが5文字以下では登録できない' do
      end
    end
  end
end
