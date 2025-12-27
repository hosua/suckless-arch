config.load_autoconfig() 
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.algorithm = 'lightness-hsl'
c.colors.webpage.darkmode.policy.images = 'never'
c.url.searchengines = {'DEFAULT': "https://google.com/search?q={}"}
c.url.default_page='about:blank'
config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')
config.unbind('d')
