<#
.SYNOPSIS
	Display process info
.DESCRIPTION
	This PowerShell script displays real-time information regarding running processes and their resources.
.EXAMPLE
	PS> ./ptop.ps1
	ptop - 16:18:41 up 17 days, 9:50, load
.LINK
	https://github.com/virail/powershell
.NOTES
	Author: James Bridge
#>
try {
	
	while(1) {ps | sort -des cpu | select -f 15 | ft -a; sleep 1; cls}

	exit 0 # success

}
catch {
	"⚠️ Error in line $(_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
