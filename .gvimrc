if has('gui_macvim')
  set imdisable      
  set transparency=2
  map <silent> gw :macaction selectNextWindow:
  map <silent> gW :macaction selectPreviousWindow:
endif
