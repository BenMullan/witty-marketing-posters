# File:		make-readme.ps1 - generates readme.md, from all image files in current directory's direct subfolders
# Exec:		pwsh.exe -File make-readme.ps1
# Author:	Ben Mullan (c) 2024

# File names include a hilarity-rating of 0 (best) to 3 (passable), like: `0-hc-annual-expendature.png`

@"
**Witty Marketing Posters**<br/>
BM's utterly hilarious, sometimes casuistic, but unpardonably witty marketing posters...

$(
	dir -path (join-path $psScriptRoot "posters") | ? psIsContainer | % {
		$_.getFiles("*.png") | % {
			"`n#`n$("<br/>" * 2)`n<img src=""https://github.com/BenMullan/witty-marketing-posters/blob/main/posters/$($_.directory.name)/$($_.name)?raw=true"" width=""100%"" />`n$("<br/>" * 2)`n"
		}
	} | sort { ($_ | sls -pattern "\d\-\w+").matches.value }
)

"@ | out-file -filePath "$psScriptRoot\readme.md"