# Programming Languages Lab
# Laura Nadolski
# May 26 2018

def reformat_languages(languages)
  new_hash = {}
  style_array = []
  type_string = ""

  languages.each do |oo_or_funct, names|
    names.each do |name, type_hash|
      if type_hash.has_value?("interpreted")
        type_string = "interpreted"
      else
        type_string = "compiled"
      end

      if name == :javascript
        style_array = [:oo, :functional]
      else
        style_array = [oo_or_funct]
      end

      new_hash[name] = {type: type_string, style: style_array}

    end
  end
  return new_hash
end
