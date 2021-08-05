def hamming(slack,twitter):
    result=0
    if len(slack)!=len(twitter):
        print("String are not equal")
    else:
        for x,(i,j) in enumerate(zip(slack,twitter)):
            if i!=j:
                print(f'char not math{i,j}in {x}')
                result+=1
    return result
name="Lawal Vincent Ayobami"
email="vincentlawal21@gmail.com"
slackid="@vincent"
Biostack="Genomics"
twitterid="@vincentayobami"
print('Name :',name)
print('Email :',email)
print('Slack ID:',slackid)
print('Biostack :',Biostack)
print('Twitter ID:',twitterid)
print("Hamming Distance between Slack and Twitter:",hamming(slackid,twitterid))