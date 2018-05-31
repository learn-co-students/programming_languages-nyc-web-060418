require "pry"
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, name|
      name.each do |name, type|
        type[:style]=[style]
      end
  end
  languages[:oo][:javascript][:style].concat languages[:functional][:javascript][:style]
  languages[:functional].delete_if{|key, value| key == :javascript }

  languages.each do |style, name|
    new_hash = new_hash.merge(name)
  end
  new_hash
end
