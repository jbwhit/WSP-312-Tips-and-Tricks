# Tmux




## Mac specific 

```bash
# http://superuser.com/a/901936
brew install reattach-to-user-namespace
echo "if-shell 'test \"$(uname)\" = \"Darwin\"' 'source ~/.tmux-osx.conf'" >> ~/.tmux.conf
# Create a file named  with the following contents:
echo "set-option -g default-command \"reattach-to-user-namespace -l bash\"" >> ~/.tmux-osx.conf
```

If you use a shell other than bash, replace 'bash' with your shell after the '-l' switch.

Lots of the following comes from other references like:

 - https://leanpub.com/the-tao-of-tmux/read#thinking-tmux
 - https://danielmiessler.com/study/tmux/
 - http://www.hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/
 - http://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/

On the server use nano or vim to edit `~/.tmux.conf` then let's get started!

## make it reloadable

```bash
# Set a Ctrl-b shortcut for reloading your tmux config
bind r source-file ~/.tmux.conf
set -g set-titles on
set -g set-titles-string '#(whoami)::#h::#(curl ipecho.net/plain;echo)'
```


## list sessions

```bash
tmux ls
```

## new session

```bash
tmux new -s config-setup
```

## Detach session

```bash
`C-b` d
tmux ls
```

## Reattach session

```bash
tmux a -t config-setup
```

## Split -- changing soon

```bash
`C-b` %
`C-b` left-arrow
```

## Three ways to kill a session

 - exit
 - `C-d`
 - `tmux kill-session -t config-setup`

## Better defaults

```bash
# split panes using | and -                                           
bind | split-window -h                                                
bind - split-window -v                                                
unbind '"'                                                            
unbind %                                                              
```

## Use Alt-Arrows

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

