#! /bin/sh
sudo wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh;
sudo chmod +x Miniconda3-latest-Linux-x86_64.sh;
sh Miniconda3-latest-Linux-x86_64.sh -b;
~/miniconda3/bin/conda init bash
#~/miniconda3/bin/conda init zsh
find ~/miniconda3/ -type f -exec stat {} + > /dev/null
~/miniconda3/bin/conda env create -f environment.yml
source ~/.bashrc
#source ~/.zshrc
echo "cierre la consola e instale vscode"
echo "una vez instalado vscode, abra de nueva una consola de WSL y ejecute 'code'"
echo "busque las extensiones 'Remote Development extension pack', 'terosHDL' e 'impulse', instale"


