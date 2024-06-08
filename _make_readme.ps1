# File:		_make_readme.ps1 - generates readme.md, from all image files in current directory (& subfolders, recursively)
# Exec:		powershell.exe -File _make_readme.ps1
# Author:	Ben Mullan (c) 2024

$MakeReadme = New-Module -AsCustomObject {

	function GetReadmeContents {
		return "HI"
	}

	function GetImageFilesInDirectory($dir) {
		
		<#
			E.g. $dir = "E:\Pics\"
		#>

		$a = @"
			# Witty Marketing Posters
			
		"@

	}

}

$MakeReadme.GetReadmeContents() | Out-File -FilePath "./readme.md"