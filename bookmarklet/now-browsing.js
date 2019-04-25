javascript:(function () {
    const canonical = document.querySelector("link[rel='canonical']")
    const ogUrl = document.querySelector("meta[property='og:url']")
    const ogTitle = document.querySelector("meta[property='og:title']")
  
    const baseUrl = 'https://twitter.com/intent/tweet'
    const selectionText = window.getSelection().toString()
    const selectionContent = selectionText ? `"${selectionText}" /` : ''
    const prefix = 'NowBrowsing: '
    const content = ogTitle ? ogTitle.getAttribute('content') : window.document.title
    const url = canonical ? canonical.getAttribute('href') : (ogUrl ? ogUrl.getAttribute('content') : window.location.href)
    const hashtag = ''
  
    const encode = (content) => encodeURIComponent(content)
  
    const text = [selectionContent, prefix, content].filter(Boolean).join(' ')
    const queries = {
      text: encode(text),
      url: encode(url),
      hashtags: hashtag,
    }
    const queryString = Object.entries(queries).map(([k, v]) => {
      if (!v) return ''
      return `${k}=${v}`
    }).filter(Boolean).join('&')
  
    const shareUrl = `${baseUrl}?${queryString}`
  
    window.open(shareUrl, '', 'width=550, height=420')
  })();
  