(function() {
  function enableCopy(e) {
    e.stopPropagation();
    return true;
  }

  document.addEventListener('copy', enableCopy, true);

  const elements = document.getElementsByTagName('*');
  for (let i = 0; i < elements.length; i++) {
    elements[i].oncopy = enableCopy;
    elements[i].oncut = enableCopy;
    elements[i].onselectstart = enableCopy;
    elements[i].oncontextmenu = enableCopy;
    elements[i].style.userSelect = 'auto';
    elements[i].style.WebkitUserSelect = 'auto';
    elements[i].style.MozUserSelect = 'auto';
    elements[i].style.msUserSelect = 'auto';
  }
})();
javascript:(function(){function e(e){return e.stopPropagation(),!0}document.addEventListener("copy",e,!0);const t=document.getElementsByTagName("*");for(let n=0;n<t.length;n++)t[n].oncopy=e,t[n].oncut=e,t[n].onselectstart=e,t[n].oncontextmenu=e,t[n].style.userSelect="auto",t[n].style.WebkitUserSelect="auto",t[n].style.MozUserSelect="auto",t[n].style.msUserSelect="auto"})();
