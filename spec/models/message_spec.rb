require 'rails_helper'

RSpec.describe Message, type: :model do
  before do
    @message = FactoryBot.build(:message)
  end
  describe '#create' do
    context '内容に問題がある場合' do
      it 'メッセージが空では送信できないこと' do
        @message.text = ''
        @message.valid?
      
       expect(@message.errors.full_messages).to include("Text can't be blank")
      end

      context '内容に問題ない場合' do
        it '全て正常' do
          expect(@message).to be_valid
        end
      end
    end
  
  end
end
