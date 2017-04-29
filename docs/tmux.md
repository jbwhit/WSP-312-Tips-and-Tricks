# Tmux

References:

 - https://danielmiessler.com/study/tmux/
 - http://www.hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/
 - http://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/


on server
nano 
vi ~/.tmux.conf

## make it reloadable

    # Set a Ctrl-b shortcut for reloading your tmux config
    bind r source-file ~/.tmux.conf
    set -g set-titles on
    set -g set-titles-string '#(whoami)::#h::#(curl ipecho.net/plain;echo)'

## list sessions

tmux ls

## new session

tmux new -s config-setup

## Detach session

`C-b` d

tmux ls

## Reattach session

tmux a -t config-setup

## Split -- changing soon

`C-b %`

`C-b left`

## Kill session

 - exit
 - `C-d`
 - tmux kill-session -t config-setup

## Better defaults

```bash
# split panes using | and -                                           
bind | split-window -h                                                
bind - split-window -v                                                
unbind '"'                                                            
unbind %                                                              
```


## Arrows

```bash
# switch panes using Alt-arrow without prefix
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D
```


## Mouse mode

```bash
# Enable mouse mode (tmux 2.1 and above)
set -g mouse on
```



tmux new -s alice
tmux new -s bob -t alice


## References
