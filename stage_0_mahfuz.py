def hamming(slack,twitter):

    distance = 0

    L = len(slack)
    for i in range(L):

        if slack[i] != twitter[i]:
            distance += 1

    return distance

name="Md. Mahfuzur Rahman Bhuyan"
email="mdmahfuzurrahmanbhuyan@gmail.com"
slackid="@Mahfuz"
twitterid="@RobyRahman13"
print('Name :',name)
print('Email :',email)
print('Slack ID:',slackid)
print('Twitter ID:',twitterid)
print("Hamming Distance between Slack and Twitter:",hamming(slackid,twitterid))

