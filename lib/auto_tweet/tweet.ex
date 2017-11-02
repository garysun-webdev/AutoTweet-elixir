defmodule AutoTweet.Application.Tweet do
    def send(text) do
        ExTwitter.configure(:process,
            [consumer_key: "cCvY7CwTBtwnFWAJVxJnHW8qo",
            consumer_secret: "8firkb3ULNbcI5lyNDzxJswCicjdOtzQdt03qFeKpyaCG7cP1Y",
            access_token: "1519150860-pmqZm1Ho4QN0xCm9LGjpywYBaasU2nbiNljdTqm",
            access_token_secret: "P3lP6XuniPKdelAXebI1R1Ruo6HPTQc652WJBPhEPzyKV"])

        ExTwitter.update(text)
    end

    # def send_random(path) do
    #     AutoTweet.Application.FileReader.get_strings_to_tweet(path)
    #     |> send
    # end
end