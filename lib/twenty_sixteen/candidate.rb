module TwentySixteen
  class Candidate
    CANDIDATES = [
      {
        :party => "Democrat",
        :first_name => "Jim",
        :last_name => "Webb",
        :url => "http://www.webb2016.com/",
        :campaign_name => nil,
        :slogans => ["Leadership You Can Trust"],
        :social_urls => [
          "http://www.facebook.com/IHeardMyCountryCalling",
          "http://instagram.com/webb2016/",
          "http://www.twitter.com/jimwebbusa",
          "https://www.youtube.com/channel/UC-Cs55IKt_UoYTMyioTSPww"
        ],
        :support_groups => [{:name => "Born Fighting PAC", :url => "http://www.bornfighting.com"}]
      },
      {
        :party => "Democrat",
        :first_name => "Hillary",
        :last_name => "Clinton",
        :url => "https://www.hillaryclinton.com/",
        :campaign_name => "Hillary for America",
        :slogans => [],
        :social_urls => [
          "https://www.facebook.com/hillaryclinton",
          "https://twitter.com/hillaryclinton",
          "https://youtube.com/hillaryclinton",
          "https://instagram.com/hillaryclinton"
        ],
        :support_groups => [
          {:name => "Ready PAC (Ready for Hillary)", :url => "https://www.readyforhillary.com/"},
          {:name => "Priorities USA Action", :url => "http://www.prioritiesusaaction.org/"},
          {:name => "American Bridge 21st Century", :url => "https://americanbridgepac.org/"}
        ]
      },
      {
        :party => "Democrat",
        :first_name => "Lincoln",
        :last_name => "Chafee",
        :url => "http://www.chafee2016.com/",
        :campaign_name => "Chafee 2016 Committee",
        :slogans => ["Fresh Ideas for America"],
        :social_urls => [
          "https://www.facebook.com/chafee2016",
          "https://twitter.com/lincolnchafee",
          "https://instagram.com/lincchafee/",
          "https://vimeo.com/chafee2016"
        ],
        :support_groups => []
      },
      {
        :party => "Democrat",
        :first_name => "Martin",
        :last_name => "O'Malley",
        :url => "https://martinomalley.com/",
        :campaign_name => "O'Malley for President",
        :slogans => [],
        :social_urls => [
          "https://facebook.com/MartinOMalley",
          "https://twitter.com/martinomalley",
          "https://youtube.com/channel/UCb7eu74-_tCNLw9FfavvKnw",
          "https://instagram.com/MartinOmalley"
        ],
        :support_groups => []
      },
      {
        :party => "Democrat",
        :first_name => "Bernie",
        :last_name => "Sanders",
        :url => "https://berniesanders.com/",
        :campaign_name => "Bernie 2016",
        :slogans => [],
        :social_urls => [
          "https://www.facebook.com/berniesanders",
          "https://twitter.com/BernieSanders",
          "https://www.youtube.com/channel/UCH1dpzjCEiGAt8CXkryhkZg",
          "https://instagram.com/berniesanders/"
        ],
        :support_groups => []
      }#,
      #{
      #  :party => "Democrat",
      #  :first_name => "Joe",
      #  :last_name => "Biden",
      #  :url => "___________",
      #  :campaign_name => "__________",
      #  :slogans => [],
      #  :social_urls => [
      #    "_______________",
      #    "_________________________________",
      #    "_________________________________",
      #    "__________"
      #  ],
      #  :support_groups => []
      #},
    ]

    def self.all
      CANDIDATES
    end

    def self.find_by_url(url)
      CANDIDATES.find{|candidate| candidate[:url] == url}
    end

    # assumes uniqueness of last_name... change `find` to `select` otherwise.
    def self.find_by_last_name(last_name)
      CANDIDATES.find{|candidate| candidate[:last_name] == last_name}
    end

    def self.democrat
      CANDIDATES.select{|candidate| candidate[:party] == "Democrat"}
    end

    def self.republican
      CANDIDATES.select{|candidate| candidate[:party] == "Republican"}
    end
  end
end
