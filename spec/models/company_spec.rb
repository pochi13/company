require 'rails_helper'

RSpec.describe Company, type: :model do
  before do
    @company = FactoryBot.build(:company)
  end
  describe '#create' do
    context '内容に問題がある場合' do
      it 'nameが空では登録できないこと' do
        @company.name = ''
        @company.valid?
       
        expect(@company.errors.full_messages).to include("Name can't be blank")
      end

      it '紹介文が空では登録できないこと' do
        @company.introduce = ''
        @company.valid?
        expect(@company.errors.full_messages).to include("Introduce can't be blank")
      end

      context '内容に問題ない場合' do
        it '全て正常' do
          expect(@company).to be_valid
        end
      end
    end
  
  end
end
