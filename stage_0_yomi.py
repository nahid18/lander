print('name: Giwa Abayomi')
print('mail: abayomi.ag@gmail.com') 
print('Slack username: @yomi')
print('Biostack: Data Analysis')
print('twitter handle: @yom1')

import scipy  

from scipy.spatial.distance import hamming

slack_username={"@yomi"}
twitter_handle={"@yom1"}

result=hamming(slack_username,twitter_handle) * len(slack_username)

print('Hamming distance between slack_username & twitter_handle :',result)