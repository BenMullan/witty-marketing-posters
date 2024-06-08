# File:		make-readme.ps1 - generates readme.md, from all image files in current directory's direct subfolders
# Exec:		pwsh.exe -File make-readme.ps1
# Author:	Ben Mullan (c) 2024

@"
# Witty Marketing Posters
BM's utterly hysterical, sometimes casuistic, & unpardonably witty marketing posters
$(
	dir | ? psIsContainer | % {
		$_.getFiles("*.png") | % {
			"`n<img src=""https://github.com/BenMullan/witty-marketing-posters/blob/main/$($_.directory.name)/$($_.name)?raw=true"" width=""100%"" />"
		}
	}
)
"@ | out-file -filePath "./readme.md"