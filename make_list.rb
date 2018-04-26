uri = URI('https://raw.githubusercontent.com/msroot/net-works-collection/master/media_youtube_ids.csv');nil
vids = JSON.parse(Net::HTTP.get(uri));nil

# v2
file = Tempfile.new(['list', '.html'])
file.write("<iframe width='720' height='405' src='https://www.youtube.com/embed/#{vids.shift}?playlist=#{vids.join(',')}' frameborder='0' allowfullscreen>")
file.close
`open #{file.path}`



# v1
# `echo "<iframe width='720' height='405' src='https://www.youtube.com/embed/#{vids.shift}?playlist=#{vids.join(',')}' frameborder='0' allowfullscreen>" > ./list.html && open list.html`

