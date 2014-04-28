module Report

  def report(msg)
    %x{ say "#{msg}" }
  end
end
