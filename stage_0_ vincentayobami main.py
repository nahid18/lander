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
slack="@vincentayobami"
Biostack="Genomics"
twitter="@vincentayobami"
print('Name :',name)
print('Email :',email)
print('Slack :',slack)
print('Biostack :',Biostack)
print('Twitter :',twitter)
print("Hamming Distance between Slack and Twitter:",hamming(slack,twitter))