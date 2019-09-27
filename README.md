Phoenix 1.4 Web Sockets Spike
====

To start your Phoenix server:

```
$ iex -S mix phx.server
iex(1)>
```

Visit localhost:4000 and view the Javascript console

To start the timer:

```
iex(1)> App.Timer.start_link()
[warn] App timer server started
```

You should see the following output in the Javascript console:

```
Joined successfully
Object {  }
socket.js:63:11
The timer is:  30 socket.js:68:11
The timer is:  29 socket.js:68:11
The timer is:  28
```
