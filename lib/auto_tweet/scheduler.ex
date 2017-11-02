defmodule AutoTweet.Application.Scheduler do
    def schedule_file(schedule, filepath) do
        Quantum.add_job(schedule, fn ->
            AutoTweet.Application.FileReader.get_strings_to_tweet(filepath) 
        |> AutoTweet.Application.TweetServer.tweet end)
    end
end