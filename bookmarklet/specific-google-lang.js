javascript:(function () {
  const url = new URL(window.location.href);
  if(!!url.searchParams.get('lr')) {
    url.searchParams.delete('lr');
  } else {
    url.searchParams.set('lr', 'lang_ja');
  }
  window.location.href = url.href;
})();
