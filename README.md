# Realtime-Monitor-Exchange-Mailbox-Moves

This is a quick simple script to get a sort of realtime monitor of exchange mailbox moves.

# Requirements

- This script requires to be run in a Powershell session where Exchange Management Tools are loaded, as it uses the below cmdlets:
```powershell
Get-MoveRequest
Get-MoveRequestStatistics
```

# Instructions

1- Open an Exchange Management Shell (EMS) window

<img src=https://user-images.githubusercontent.com/33433229/126025467-440947ae-c2a3-4245-90e0-4f00fe75fe8a.png width = 300>

<img src = https://user-images.githubusercontent.com/33433229/126025476-6d9627f6-a5b0-4b5b-bb10-484ccca4d395.png width = 600>


2- Copy and paste the script in that EMS window

> Note: I also put a one-liner in that repo, it's easier and nicer to paste inside an EMS.

See the magic ! You can see the % progress moving in realtime until it's completed !

<img src = https://user-images.githubusercontent.com/33433229/126025578-40f80fa5-5f98-42a8-8d06-85167d7b0879.png width = 600>

> Note 2: if it doesn't launch rightaway, hit "Enter" to run it (depends if you copy/paste with a carriage return)

4- the script will run indefinitely until you close the Exchange Management Shell or until you hit CTRL + C

When moves are complete, you'll still see the completed Mailbox Moves, until you remove the completed moves using ```Remove-MoveRequest``` (to remove all completed move requests, just type ```Get-MoveRequest | Remove-MoveRequest```

Example of what you see when the moves are complete:

<img src = https://user-images.githubusercontent.com/33433229/126025673-17258675-12da-4e0a-847c-bc981e57fe17.png width = 500>

And on another window I type

```powershell
Get-Moverequest | Remove-MoveRequest
```

And then you'll see an (almost) empty window where the script is running:

<img src = https://user-images.githubusercontent.com/33433229/126025711-aade5d49-5465-449c-b90c-33050c1d6408.png width = 500>

# Going further

You can use the method used in that script to build realtime monitors for many things:

- performance counter(s)
- getting stock quotes
- etc...

I'll document the principle later if I have time.


