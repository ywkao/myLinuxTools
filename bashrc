#!/bin/sh
#source /cvmfs/cms.cern.ch/cmsset_default.sh
source /wk_cms/ykao/root/bin/thisroot.sh
#source /home/kfjack/Bmm/local/gcc/4.8.1/x86_64-slc6-gcc48-opt/setup.csh
#source /home/kfjack/Bmm/local/root/bin/thisroot.csh /home/kfjack/Bmm/local/root
#export PATH=/home/ymtzeng/local/bin:$PATH
#export LD_LIBRARY_PATH=/home/ymtzeng/local/lib64:$LD_LIBRARY_PATH

#source /cvmfs/cms.cern.ch/crab3/crab.sh
#source /cvmfs/cms.cern.ch/cmsset_default.sh

# Setting env for local python
export PATH=${HOME}/local/lib/bin/:${PATH}
export LD_LIBRARY_PATH=/home/ykao/local/lib/lib:${LD_LIBRARY_PATH}

# test only
# export SCRAM_ARCH=slc7_amd64_gcc700

## Setting env to get newer version of xrdfs
#export PATH=/usr/bin/:$PATH 

# History search using <UP>/<DOWN>
if [[ $- =~ i ]]; then
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
fi

# Setting env for tmux
export LD_LIBRARY_PATH=/home/ykao/local/usr/lib/:${LD_LIBRARY_PATH}
source ~/.bash_completion_tmux.sh
alias tmux='/home/ykao/local/tmux-1.9a/tmux'

alias ll='ls -lhrt'
alias rl='readlink -f'
#alias ws='cd /wk_cms2/ykao/CMSSW_9_4_10/src/transfer/Loopers/scripts/; pwd;'
alias or='cd /wk_cms2/ykao/CMSSW_9_4_10/src/2017/tqHGG; pwd;'
alias ws='cd /wk_cms2/ykao/CMSSW_9_4_10/src/ttH/Loopers/scripts/; pwd;'
#alias tp='cd /wk_cms/ykao/work/CMSSW_10_6_8; pwd;'
alias tp='cd /wk_cms2/ykao/CMSSW_9_4_10/src/tprimetH_ttH/Loopers/scripts; pwd;'

# Alias for login other sites
alias Lxplus='ssh -Y ykao@lxplus.cern.ch'
alias node01='ssh -Y node01'
alias node02='ssh -Y node02'
alias node03='ssh -Y node03'
alias node04='ssh -Y node04'
alias node05='ssh -Y node05'
alias node06='ssh -Y node06'
alias node07='ssh -Y node07'
alias node08='ssh -Y node08'
alias node09='ssh -Y node09'
alias node10='ssh -Y node10'
alias node11='ssh -Y node11'
alias node12='ssh -Y node12'
alias node13='ssh -Y node13'
alias node14='ssh -Y node14'
alias node15='ssh -Y node15'
alias node16='ssh -Y node16'
alias node17='ssh -Y node17'
alias node18='ssh -Y node18'
alias node19='ssh -Y node19'
alias node20='ssh -Y node20'

export PS1='\[\e[1;32m\]\u@\h \[\e[1;34m\]\w $ \[\e[0;37m\]' #export PS1='\[\e[0;37m\]\u@\h:\[\e[1;34m\]\w\n\[\e[0;38m\]  cmd > '

function gitinfo()
{
    echo "command: git remote -v"
    git remote -v

    echo "command: git branch"
    git branch

    echo "command: git status"
    git status
}

function check_num_files()
{
    directory=$1
    find ${directory} -maxdepth 1 -type d | while read -r dir; do printf "%-20s:\t" "$dir"; find "$dir" -type f | wc -l; done
}

#set -o vi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
