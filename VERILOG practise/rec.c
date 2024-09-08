#include <stdio.h>

int fib(int x);
int sum=0;
int main()
{
    int op = fib(10);
    printf("%d",sum);

}
int fib(int x)
{
    while(x>1)
    {
        sum=sum+fib(x-1)+fib(x-2);
        
    }
    return sum;
}