# Por exemplo, se cada fornecedor tiver uma conta e cada conta estiver associada a um histórico de conta, o modelo do fornecedor poderá ser assim

class AccountHistory < ApplicationRecord
  belongs_to :account
end