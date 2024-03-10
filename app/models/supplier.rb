# Por exemplo, se cada fornecedor tiver uma conta e cada conta estiver associada a um histórico de conta, o modelo do fornecedor poderá ser assim

class Account < ApplicationRecord
  belongs_to :supplier
  has_one :account_history
end