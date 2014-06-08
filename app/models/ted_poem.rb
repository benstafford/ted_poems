class TedPoem
  def initialize
    @twitter_client = TwitterClient.client

  end

  def author
    get_tweets.map(&:text).reject {|tweet| tweet.match(/^RT/)}
  end

  private

  def get_tweets
    @twitter_client.user_timeline("turbogunhawk").sample(3)
  end
end
