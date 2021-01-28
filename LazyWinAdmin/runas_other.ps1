# runas_other.ps1 - prompts to run LazyWinAdmin.ps1 as another user
# could be generalized to select the target file replacing hardcoded file with variable/prompt

# code block to be added to lazywinadmin script after testing
# else condition to be removed after adding to main script

$ans = read-host -Prompt "Run as another user [Y/n]?"

if (($ans -eq 'Y') -or ($ans -eq 'y'))

{
	
	Start-Process "LazyWinAdmin.ps1" -Verb runAs
	
	# end the current user session after opening as another user
	exit

}

else

{

	Start-Process "LazyWinAdmin.ps1"

}
