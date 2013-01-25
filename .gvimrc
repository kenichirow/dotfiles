if has('gui_macvim')
  set imdisable      
  set transparency=5 
  map <silent> gw :macaction selectNextWindow:
  map <silent> gW :macaction selectPreviousWindow:
endif
