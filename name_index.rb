# -*- coding: utf-8 -*-
class NameIndex
  def self.create_index(names)
    range_a  = 'ア'..'オ'
    range_ka = 'カ'..'コ'
    range_sa = 'サ'..'ソ'
    range_ta = 'タ'..'ト'
    range_na = 'ナ'..'ノ'
    range_ha = 'ハ'..'ホ'
    range_ma = 'マ'..'モ'
    range_ya = 'ヤ'..'ヨ'
    range_ra = 'ラ'..'ロ'
    range_wa = 'ワ'..'ヲ'
    range_n  = 'ン'..'ン'

    indexed_names = [
      ['ア', []],
      ['カ', []],
      ['サ', []],
      ['タ', []],
      ['ナ', []],
      ['ハ', []],
      ['マ', []],
      ['ヤ', []],
      ['ラ', []],
      ['ワ', []],
      ['ン', []]
    ]

    names.each do |name|
      case name[0]
      when range_a
        indexed_names[0][1] << name
      when range_ka
        indexed_names[1][1] << name
      when range_sa
        indexed_names[2][1] << name
      when range_ta
        indexed_names[3][1] << name
      when range_na
        indexed_names[4][1] << name
      when range_ha
        indexed_names[5][1] << name
      when range_ma
        indexed_names[6][1] << name
      when range_ya
        indexed_names[7][1] << name
      when range_ra
        indexed_names[8][1] << name
      when range_wa
        indexed_names[9][1] << name
      when range_n
        indexed_names[10][1] << name
      end
    end
    indexed_names.reject! { |category| category[1].empty? }
    indexed_names.each do |category|
      category[1].sort!
    end
    indexed_names
  end
end

if $PROGRAM_NAME == __FILE__
  p NameIndex.create_index(['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ'])
  p NameIndex.create_index(['ンマコシ', 'キシモト', 'イトウ', 'ンネサカ', 'ババ', 'カネダ', 'ワダ', 'ハマダ', 'ンガムラ'])
end
