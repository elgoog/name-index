# -*- coding: utf-8 -*-
class NameIndex
  def self.index_category_of(character)
    categories = ['ア', 'カ', 'サ', 'タ', 'ナ',  'ハ', 'マ', 'ヤ', 'ラ', 'ワ', 'ン']
    categories_code = categories.map(&:ord)
    char_code = character.ord

    until categories_code.include?(char_code)
      char_code -= 1
    end

    char_code.chr('UTF-8')
  end

  def self.create_index(names)
    indexed_name_hash = names.sort.group_by { |val| self.index_category_of(val[0]) }
    indexed_name_hash.to_a.sort
  end
end

if $PROGRAM_NAME == __FILE__
  p NameIndex.create_index(['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ'])
  p NameIndex.create_index(['ンマコシ', 'キシモト', 'イトウ', 'ンネサカ', 'ババ', 'カネダ', 'ワダ', 'ハマダ', 'ンガムラ'])
end
