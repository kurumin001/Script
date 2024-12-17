# Define a lista de endereços IP
$ips = @(
    "192.168.000.000",
    "192.168.000.001",
    "192.168.101.100",
    "192.168.101.200"
)

# Itera sobre cada IP e executa o traceroute
foreach ($ip in $ips) {
    Write-Host "Executando traceroute para $ip" -ForegroundColor Cyan
    # Executa o comando tracert com os parâmetros desejados
    tracert -h 15 $ip
    Write-Host "----------------------------------------"
}

