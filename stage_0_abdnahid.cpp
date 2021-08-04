#include <iostream>
#include <string> 

using namespace std;

int hammingDist(char *slack, char *twitter)
{
    int i = 0, count = 0;
    while (slack[i] != '\0')
    {
        if (slack[i] != twitter[i])
            count++;
        i++;
    }
    return count;
}

int main()
{
    string name = "Abdullah Al Nahid";
    string email = "nahidpatwary1@gmail.com";
    string biostack = "Genomics";
    string delim = "\n";

    char slack[] = "@abdnahid_";
    char twitter[] = "@abdnahid_";
    int distance = hammingDist(slack, twitter);

    string output = "Name: " + name + delim + 
                    "Email: " + email + delim + 
                    "Slack Username: " + slack + delim +
                    "Biostack: " + biostack + delim +
                    "Twitter Handle: " + twitter + delim + 
                    "Hamming Distance: " + std::to_string(distance) + delim;
    cout << output;
    return 0;
}
