def hamming(slack,twitter):
    result=("undefined")
    if len(slack)!=len(twitter):
        print("String are not equal")
    else:
        pass
    return result

def hammingdist (slack_username, twitter) :
	i = 0
	count =0
	while (i < len (slack_username)):
		if (slack_username [i] != twitter [i]) :
			count +=1
		i +=1
	return count

name="Lawal Vincent Ayobami"
email="vincentlawal21@gmail.com"
slack="@vincent"
Biostack="Genomics"
twitter="@vincentayobami"
print('Name :',name)
print('Email :',email)
print('Slack :',slack)
print('Biostack :',Biostack)
print('Twitter :',twitter)
print("Hamming Distance between Slack and Twitter:",hamming(slack,twitter))