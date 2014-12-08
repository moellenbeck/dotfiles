h() { cd ~/dev/humangrid/$1; }
_h() { _files -W ~/dev/humangrid -/; }
compdef _h h

hg_core() { cd ~/dev/humangrid/hg-git/$1; }
_hg_core() { _files -W ~/dev/humangrid/hg-git -/; }
compdef _hg_core hg_core

m() { cd ~/dev/5minds/$1; }
_m() { _files -W ~/dev/5minds -/; }
compdef _m m

a() { cd ~/Dropbox/apps/$1; }
_a() { _files -W ~/Dropbox/apps -/; }
compdef _a a

