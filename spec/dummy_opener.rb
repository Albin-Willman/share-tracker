class DummyOpener
  def call(path)
    open("spec/services/nordnet/files/#{file_name(path)}.html")
  end

  def file_name(path)
    return 'test_base' if path.include?('bolagsfakta')
    'test_key_numbers'
  end
end