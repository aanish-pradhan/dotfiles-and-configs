<<"COMMENT"
	My .bash_aliases file for use with the Windows Subsystem for Linux (WSL).

	@author Aanish Pradhan
	@version 07/22/2022
COMMENT

# SWITCHES CONDA ENVIRONMENTS
alias condaSwitch="conda deactivate && conda activate"

# STARTS RSTUDIO SERVER IN THE HOST BROWSER WITHOUT REQUIRING "sudo"

## Two aliases are provided depending on the startup daemon service on the 
## system: init or systemd. Uncomment one and comment out the other accordingly 

### init
alias rstudio="sudo /usr/sbin/rstudio-server start && /mnt/c/Program\ Files\ \(x86\)/Microsoft/Edge/Application/msedge.exe http://localhost:8787"

### systemd
# alias rstudio="sudo systemctl start rstudio-server.service && /mnt/c/Program\ Files\ \(x86\)/Microsoft/Edge/Application/msedge.exe http://localhost:8787"
