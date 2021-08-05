def hamming(slack,twitter):
    result=0
    if len(slack)!=len(twitter):
        distance = +1
    else:
        for x,(i,j) in enumerate(zip(slack,twitter)):
            if i!=j:
                print(f'char not math{i,j}in {x}')
                result+=1
    return result
name="Md. Mahfuzur Rahman Bhuyan"
email="mdmahfuzurrahmanbhuyan@gmail.com"
slackid="@Mahfuz"
twitterid="@Mahfuz_"
print('Name :',name)
print('Email :',email)
print('Slack ID:',slackid)
print('Twitter ID:',twitterid)
print("Hamming Distance between Slack and Twitter:",hamming(slackid,twitterid))




