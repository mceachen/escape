# escape: Export `.pages` version 3-5 to a consistent format

## Assumptions:

1. a valid installation of Pages 5 is in `/Applications/Pages.app`
2. a valid installation of Pages 3 is in `/Applications/iWork '08/Pages.app`
   (this is the default location that the Pages 5 installer moves Pages 3 into)
3. only Pages 5 documents contain a `/index.xml.gz` file (which seemed to be the case for my documents)

## Usage:

1. `mkdir ~/bin && cd ~/bin && export PATH=$HOME/bin/escape:$PATH && git clone https://github.com/mceachen/escape.git`
2. `cd ~/Documents` # or wherever
3. `find $(pwd) -name \*.pages -print0 | xargs -0 -n 1 -- p-to-doc`