print('name: Giwa Abayomi')
print('mail: abayomi.ag@gmail.com') 
print('Slack username: @yomi')
print('Biostack: Data Analysis')
print('twitter handle: @yom1')

def hammingDist(slack,twitter):

    distance = 0

    L = len(slack)
    for i in range(L):

        if slack[i] != twitter[i]:
            distance += 1

    return distance

slack_username="@yomi"
twitter_handle="@yom1"

result=hammingDist(slack=slack_username, twitter=twitter_handle)

print('Hamming distance between slack_username & twitter_handle :',result)