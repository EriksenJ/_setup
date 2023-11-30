# Install Scoop (uncomment the line below if you didn't install Scoop previously)
# Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

# add buckets 
scoop bucket add extras 
scoop bucket add nerd-fonts
scoop bucket add r-bucket https://github.com/cderv/r-bucket.git


# List of apps to install using Scoop
$appsToInstall = @(
    'vscode',
    'git',
    'r',
    'rstudio',
    'quarto',
    'julia',
    'zotero',
    'spotify',
    'sublime-text'
    'tinytex',
    'ubuntu-nf',
    'ubuntumono-nf',
    'firacode',
    'powertoys',
    'firefox',
    'obsidian',
    'miniconda3',
    'rtools'
    # Add more apps as needed
)

# Loop through the list and install each app
foreach ($app in $appsToInstall) {
    Write-Host "Installing $app..."
    scoop install $app
}

Write-Host "All apps installed successfully."


#### Setup R for standard usage 
# Install standard packages 
Rscript -e "install.packages('pacman'); library(pacman); p_load(BiocManager, tidyverse, rio, data.table, fixest, modelsummary, knitr, showtext, extrafonts); font_import(); loadfonts(); font_add_google(c('Ubuntu', 'Ubuntu Mono', 'Ubuntu Condensed')"


#### Install radian with pip3 
pip3 install -U radian 


#### install cmdstan
conda create -n stan -c conda-forge cmdstan
conda activate stan


#### install jupyter 
conda install jupyter