bold=$(tput bold)
normal=$(tput sgr0)
echo

#Default values for flags
verbose='false'
aflag='.txt'
bflag=''
input=.
performance='false'

#Case to get flags
while getopts 'abi:vp' flag; do
  case "${flag}" in
    a) aflag='*' ;;
    b) bflag='true' ;;
    i) input="${OPTARG}" ;;
    v) verbose='true' ;;
    p) performance='true' ;;
    *) error "Unexpected option ${flag}" ;;
  esac
done


#Variables you can adjust
column1="%-20s" # spaces before column 2 starts
column2="%-20s" # spaces before column 2 startsi

echo "Osds overflowing db/journaling onto slow disks (slow_used_bytes)"
grep -ri slow_used_bytes | grep -v "\:\ 0\,"




