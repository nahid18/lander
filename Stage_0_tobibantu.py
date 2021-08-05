name="Kazeem Oluwatobiloba Simeon"
email= "tobibantu@gmail.com"
biostack= "Genomics"
slack= "@tobibantu"
twitter= "@tobibantu"

print ("Name: ", name, "\n", "Email: ", email, "\n", "Slack: ", slack, "\n", "Biostack: ", biostack, "\n", "Twitter handle: ", twitter)

result=0
if len(slack)!=len(twitter):
    print("String are not equal")
else:
    for x,(i,j) in enumerate(zip(slack,twitter)):
        if i!=j:
            print(f'char not math{i,j}in {x}')
            result+=1
    print ("hamstring is:", result)
