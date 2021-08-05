
#include<stdio.h>
#include<string.h>

int hammingDistance(char slack[], char twitter[]);

int main(){
    char slack[] = "@Sakshi_r_";
    char twitter[] = "@Sakshi_r_";

    printf("Name : Sakshi Rawat\n");
    printf("Email : sakshirawat3oct@gmail.com\n");
    printf("Slack : %s\n",slack);
    printf("Biostack : Genomics\n");
    printf("Twitter : %s\n",twitter);
    printf("Hamming Distance : %d",hammingDistance(slack, twitter));
    return 0;
}
int hammingDistance(char slack[], char twitter[]){
    int i = 0, count = 0;
    while (i <= strlen(slack)){
        if (slack[i] != twitter[i])
            count++;
        i++;
    }
    return count;
}