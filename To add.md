# To add

### Move line(s)
Move single lines
```sh
nmap <C-k> ddkP
nmap <C-j> ddp
```

Move multiple lines
```sh
vmap <C-k> xkP`[V`]
vmap <C-j> xp`[V`]
```

### Clean up file

Set up a macro to clean the whole document
```sh
let @f='mmggVG=`m'  
```
