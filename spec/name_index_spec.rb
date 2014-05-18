# -*- coding: utf-8 -*-
require File.expand_path(File.dirname(__FILE__) + '/../name_index')

describe NameIndex do
  specify do
    expect(NameIndex.create_index(['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ']))
      .to eq [['ア', ['イトウ']], ['カ', ['カネダ', 'キシモト']], ['ハ', ['ハマダ', 'ババ']], ['ワ', ['ワダ']]]
  end

  specify do
    expect(NameIndex.create_index(['ンマコシ', 'キシモト', 'イトウ', 'ンネサカ', 'ババ', 'カネダ', 'ワダ', 'ハマダ', 'ンガムラ']))
      .to eq [['ア', ['イトウ']], ['カ', ['カネダ', 'キシモト']], ['ハ', ['ハマダ', 'ババ']], ['ワ', ['ワダ']], ['ン', ['ンガムラ', 'ンネサカ', 'ンマコシ']]]
  end
end
