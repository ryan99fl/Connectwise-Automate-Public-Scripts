#Get-ThresholdPassOrFail -diskfreepercent 12 -diskfreegb 10 -testmethod 15pctfree
function Get-ThresholdPassOrFail {
    param (
        [Parameter(Mandatory=$true)]
        [string]$testmethod,

        [Parameter(Mandatory=$true)]
        [single]$diskfreepercent,

        [Parameter(Mandatory=$true)]
        [single]$diskfreegb
    )

    switch ($testmethod) {
        'NA' {$Result = "PASS"}
        '5 Percent Free' { If($diskfreepercent -le 5){$Result = "FAIL"}Else{$Result = "PASS"}}
        '10 Percent Free' { If($diskfreepercent -le 10){$Result = "FAIL"}Else{$Result = "PASS"}}
        '15 Percent Free' { If($diskfreepercent -le 15){$Result = "FAIL"}Else{$Result = "PASS"}}
        '20 Percent Free' { If($diskfreepercent -le 20){$Result = "FAIL"}Else{$Result = "PASS"}}
        '30 Percent Free' { If($diskfreepercent -le 30){$Result = "FAIL"}Else{$Result = "PASS"}}
        '40 Percent Free' { If($diskfreepercent -le 40){$Result = "FAIL"}Else{$Result = "PASS"}}
        '50 Percent Free' { If($diskfreepercent -le 50){$Result = "FAIL"}Else{$Result = "PASS"}}
        '60 Percent Free' { If($diskfreepercent -le 60){$Result = "FAIL"}Else{$Result = "PASS"}}
        '70 Percent Free' { If($diskfreepercent -le 70){$Result = "FAIL"}Else{$Result = "PASS"}}
        '80 Percent Free' { If($diskfreepercent -le 80){$Result = "FAIL"}Else{$Result = "PASS"}}
        '90 Percent Free' { If($diskfreepercent -le 90){$Result = "FAIL"}Else{$Result = "PASS"}}
        '1 GB Free' { If($diskfreegb -le 1){$Result = "FAIL"}Else{$Result = "PASS"}}
        '2 GB Free' { If($diskfreegb -le 2){$Result = "FAIL"}Else{$Result = "PASS"}}
        '3 GB Free' { If($diskfreegb -le 3){$Result = "FAIL"}Else{$Result = "PASS"}}
        '5 GB Free' { If($diskfreegb -le 4){$Result = "FAIL"}Else{$Result = "PASS"}}
        '10 GB Free' { If($diskfreegb -le 10){$Result = "FAIL"}Else{$Result = "PASS"}}
        '20 GB Free' { If($diskfreegb -le 20){$Result = "FAIL"}Else{$Result = "PASS"}}
        '30 GB Free' { If($diskfreegb -le 30){$Result = "FAIL"}Else{$Result = "PASS"}}
        '40 GB Free' { If($diskfreegb -le 40){$Result = "FAIL"}Else{$Result = "PASS"}}
        '50 GB Free' { If($diskfreegb -le 50){$Result = "FAIL"}Else{$Result = "PASS"}}
        '100 GB Free' { If($diskfreegb -le 100){$Result = "FAIL"}Else{$Result = "PASS"}}
        '200 GB Free' { If($diskfreegb -le 200){$Result = "FAIL"}Else{$Result = "PASS"}}
        '300 GB Free' { If($diskfreegb -le 300){$Result = "FAIL"}Else{$Result = "PASS"}}
        '400 GB Free' { If($diskfreegb -le 400){$Result = "FAIL"}Else{$Result = "PASS"}}
        '500 GB Free' { If($diskfreegb -le 500){$Result = "FAIL"}Else{$Result = "PASS"}}
        '800 GB Free' { If($diskfreegb -le 800){$Result = "FAIL"}Else{$Result = "PASS"}}
        '1000 GB Free' { If($diskfreegb -le 1000){$Result = "FAIL"}Else{$Result = "PASS"}}
        '1500 GB Free' { If($diskfreegb -le 1500){$Result = "FAIL"}Else{$Result = "PASS"}}
        '2000 GB Free' { If($diskfreegb -le 2000){$Result = "FAIL"}Else{$Result = "PASS"}}
        default { 'PASS' }
    }

    return $result
    
}

Function Get-DiskAlerts
{
    param(
    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$diska,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$diskb,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$diskc,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$diskd,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$diske,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$diskf,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$diskg,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$diskh,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$diski,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$diskj,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$diskk,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$diskl,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$diskm,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$diskn,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$disko,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$diskp,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$diskq,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$diskr,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$disks,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$diskt,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$disku,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$diskv,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$diskw,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$diskx,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$disky,

    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
    [AllowEmptyString()]
    [string]$diskz
    )

    $DisksWMI = get-WmiObject win32_logicaldisk
    $ResultArray = @()

    foreach ($disk in $diskswmi)
    {
        $DiskPercentageFree = ""
        $DiskFreeGB = ""
        $DiskUsedActual = ""
        $TempLetterVar = ""
        $TestFinal = ""
        $ErrorToDisplay = ""

        $DiskUsedActual = $disk.size - $disk.FreeSpace
        $DiskPercentageFree = [math]::Round(($Disk.FreeSpace / $disk.size) * 100)
        $DiskFreeGB = $($Disk.FreeSpace / 1024 / 1024 / 1024)
        $TempLetterVar = $($disk.DeviceID).Replace(":","")
        $ToUse = Get-Variable "disk$TempLetterVar" -ValueOnly

        $TestFinal = Get-ThresholdPassOrFail -testmethod $ToUse -diskfreepercent $DiskPercentageFree -diskfreegb $DiskFreeGB

        if ($TestFinal -eq 'PASS') {
            $ResultArray += "$($Disk.DeviceID) - $TestFinal"
        }
        else {
            if ($ToUse -match 'gb') {
                $ErrorToDisplay = "Disk Free GB $DiskFreeGB"
            }
            else {
                $ErrorToDisplay = "Disk Free Percentage $DiskPercentageFree"
            }

            $ResultArray += "$($Disk.DeviceID) - $TestFinal - Method $ToUse - $ErrorToDisplay"
        }
    }

#Return ($ResultArray) -join ","
$Test = "Disk C is $diskc"
Return $Test
}

# Test Command
# Get-DiskAlerts -diska "a" -diskb "b" -diskc "100 GB Free" -diskd "d" -diske "e" -diskf "f" -diskg "g" -diskh "h" -diski "i" -diskj "j" -diskk "k" -diskl "l" -diskm "m" -diskn "n" -disko "o" -diskp "p" -diskq "q" -diskr "r" -disks "s" -diskt "t" -disku "u" -diskv "v" -diskw "w" -diskx "x" -disky "y" -diskz "z"