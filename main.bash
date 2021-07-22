/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, PHP, Ruby, 
C#, VB, Perl, Swift, Prolog, Javascript, Pascal, HTML, CSS, JS
Code, Compile, Run and Debug online from anywhere in world.

******************************************************************************
a=(3 6 8 14 7)
echo ${a[@]}     
b=(5 33 6)
echo ${b[@]}
c=("${a[@]}" "${b[@]}")
echo ${c[@]}
n=${#c[@]}
echo $n
for ((i=0; i<$n; i++))
do
    for((j=i+1; j<$n; j++))
    do
        if [ ${c[i]} -le ${c[j]} ]
        then
            continue
        else
            sort=${c[i]}
            c[i]=${c[j]}
            c[j]=$sort
        fi
    done
done
echo ${c[@]}
if (( $n % 2 == 1 )); then   
    val="${c[ $(($n+1/2)) ]}"
  else                          
    (( j=n/2 ))
    (( k=j+1 ))
    (( val=(${c[j]} + ${c[k]})/2 ))
  fi
  echo $val
