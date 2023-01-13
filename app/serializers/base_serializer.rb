# frozen_string_literal: true

class BaseSerializer < ActiveModel::Serializer
  attribute :id, if: -> { persisted? }

  def persisted?
    !object.new_record?
  end
end
