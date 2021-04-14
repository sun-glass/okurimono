FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@example'}
    password              {'111aaa'}
    password_confirmation {password}
    last_name             { '安倍' }
    first_name            { '遼介' }
    last_name_kana        { 'アベ' }
    first_name_kana       { 'リョウスケ' }
    birth_date            { '1994-02-11' }
  end
end