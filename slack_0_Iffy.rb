my_name="Akaniro Ifunanya"
my_email="joiceiffy22@gmail.com"
my_language="Ruby"
my_biostack="Genomics and Data analysis"
my_slackusername="@Iffy"
my_twitterhandle="@akaniroifunanya"
puts "My name = " + my_name
puts "My email = " + my_email
puts "My language = " + my_language
puts "My biostack = " + my_biostack
puts "My slackusername = " + my_slackusername
puts "My twitterhandle = " + my_twitterhandle
def Hamming_distance(s, t)
  m = s.length
  n = t.length
  return m if n == 0
  return n if m == 0
  d = Array.new(m+1) {Array.new(n+1)}

  (0..m).each {|i| d[i][0] = i}
  (0..n).each {|j| d[0][j] = j}
  (1..n).each do |j|
    (1..m).each do |i|
      d[i][j] = if s[i-1] == t[j-1]  # adjust index into string
                  d[i-1][j-1]       # no operation required
                else
                  [ d[i-1][j]+1,    # deletion
                    d[i][j-1]+1,    # insertion
                    d[i-1][j-1]+1,  # substitution
                  ].min
                end
    end
  end
  d[m][n]
end

[ ['@Iffy','@akaniroifunanya'] ].each do |s,t|
  puts "Hamming_distance = #{Hamming_distance(s, t)}"
end