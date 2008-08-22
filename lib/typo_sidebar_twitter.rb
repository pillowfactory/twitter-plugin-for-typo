class TypoSidebarTwitter < Sidebar
  display_name 'Twitter'
  description 'Display a <a href="http://www.twitter.com">Twitter</a> user\'s tweets.'
  
  setting :title, 'Twitter', :label => 'Title'
  setting :twitter_user, 'lpillow', :label => 'Twitter User'
  setting :tweet_count, 3, :label => 'Tweet Count'
  setting :ignore_replies, true, :label => "Ignore Replies? (tweets starting with '@')", :input_type => :checkbox
  
end