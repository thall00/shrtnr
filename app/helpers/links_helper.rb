module LinksHelper

  def full_url(link)
    t('domain') + link.short_url
  end
end
