$Listener = [System.Net.Sockets.TcpListener]9999;
$Listener.Start();
$Counter = 0
while ($Counter -ne 30 ) {
    if ($Listener.Pending()) {
        $Client = $Listener.AcceptTcpClient() 
        Write-Verbose ("[$(Get-Date)] New Connection from {0}" -f $Client.Client.RemoteEndPoint.Address, $Client.Client.RemoteEndPoint.Port) -Verbose
    }
    start-sleep 1
    $Counter++
}

$Listner.Stop()

