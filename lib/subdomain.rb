class Subdomain
  def self.matches?(request)
    if request.domain == 'subdomain-example.dev'
      case request.subdomain
      when 'www', '', 'doyousavvi', 'assets', 'mail', 'ftp', nil
        false
      else
        true
      end
    else
      true
    end
  end
end
