# -*- coding: utf-8 -*-
class NameIndex
  CATEGORIES_CODE = %w(ア カ サ タ ナ ハ マ ヤ ラ ワ ン).map(&:ord).freeze
  def self.index_category_of(initial_character)
    char_code = initial_character.ord
    char_code -= 1 until CATEGORIES_CODE.include?(char_code)
    char_code.chr('UTF-8')
  end

  def self.create_index(names)
    names.sort
         .group_by { |val| index_category_of(val[0]) }
         .to_a
         .sort
  end
end
