module CustomLandingPage
  # rubocop:disable Metrics/ModuleLength
  module StaticData

    # TODO Document the expected JSON structure here

    DATA_STR = <<JSON
{
  "settings": {
    "marketplace_id": 99999,
    "locale": "en",
    "sitename": "FindMyEcommB2B"
  },

  "page": {
    "twitter_handle": {"type": "marketplace_data", "id": "twitter_handle"},
    "twitter_image": {"type": "assets", "id": "default_hero_background"},
    "facebook_image": {"type": "assets", "id": "default_hero_background"},
    "title": {"type": "marketplace_data", "id": "page_title"},
    "description": {"type": "marketplace_data", "id": "description"},
    "publisher": {"type": "marketplace_data", "id": "name"},
    "copyright": {"type": "marketplace_data", "id": "name"},
    "facebook_site_name": {"type": "marketplace_data", "id": "name"},
    "google_site_verification": {"value": "CHANGEME"}
  },

  "sections": [
    {
      "id": "hero",
      "kind": "hero",
      "variation": {"type": "marketplace_data", "id": "search_type"},
      "title": {"type": "marketplace_data", "id": "slogan"},
      "subtitle": {"type": "marketplace_data", "id": "description"},
      "background_image": {"type": "assets", "id": "default_hero_background"},
      "background_image_variation": "dark",
      "search_button": {"type": "translation", "id": "search_button"},
      "search_path": {"type": "path", "id": "search"},
      "search_placeholder": {"type": "marketplace_data", "id": "search_placeholder"},
      "search_location_with_keyword_placeholder": {"type": "marketplace_data", "id": "search_location_with_keyword_placeholder"},
      "signup_path": {"type": "path", "id": "signup"},
      "signup_button": {"type": "translation", "id": "signup_button"},
      "search_button_color": {"type": "marketplace_data", "id": "primary_color"},
      "search_button_color_hover": {"type": "marketplace_data", "id": "primary_color_darken"},
      "signup_button_color": {"type": "marketplace_data", "id": "primary_color"},
      "signup_button_color_hover": {"type": "marketplace_data", "id": "primary_color_darken"}
    },
    {
        "id": "listings",
        "kind": "listings",
        "title": "Featured Agencies",
        "button_color": {"type": "marketplace_data", "id": "primary_color"},
        "button_color_hover": {"type": "marketplace_data", "id": "primary_color_darken"},
        "button_title": "Browse all",
        "button_path": {"type": "path", "id": "search"},
        "price_color": {"type": "marketplace_data", "id": "primary_color"},
        "no_listing_image_background_color": {"type": "marketplace_data", "id": "primary_color"},
        "no_listing_image_text": {"type": "translation", "id": "no_listing_image"},
        "author_name_color_hover": {"type": "marketplace_data", "id": "primary_color"},
        "listings": [
            {
                "listing": { "type": "listing", "id": 1 }
            },
            {
                "listing": { "type": "listing", "id": 2 }
            },
            {
                "listing": { "type": "listing", "id": 4 }
            }
                       
        ]
    },
    {
        "id": "locations",
        "kind": "locations",
        "title": "Explore Studios",
        "location_color_hover": {"type": "marketplace_data", "id": "primary_color"},
        "button_color": {"type": "marketplace_data", "id": "primary_color"},
        "button_color_hover": {"type": "marketplace_data", "id": "primary_color_darken"},
        "button_title": "Browse all",
        "button_path": {"type": "path", "id": "search"},
        "locations": [
            {
                "title": "Gibraltar",
                "location": "/s",
                "background_image": {"type": "assets", "id": "1.jpg"}
            },
            {
                "title": "America",
                "location": "/s",
                "background_image": {"type": "assets", "id": "2.jpg"}
            },
            {
                "title":"East Asia",
                "location": "/s",
                "background_image": {"type": "assets", "id": "3.jpg"}
            },
            {
                "title": "Europe",
                "location": "/s",
                "background_image": {"type": "assets", "id": "4.jpg"}
            }

        ]
    },
    {
      "id": "footer",
      "kind": "footer",
      "theme": "light",
      "social_media_icon_color": {"type": "marketplace_data", "id": "primary_color"},
      "social_media_icon_color_hover": {"type": "marketplace_data", "id": "primary_color_darken"},
      "links": [
        {"label": "About", "href": {"type": "path", "id": "about"}},
        {"label": "Contact us", "href": {"type": "path", "id": "contact_us"}},
        {"label": "How to use?", "href": {"type": "path", "id": "how_to_use"}},
        {"label": "Terms", "href": {"type": "path", "id": "terms"}},
        {"label": "Privacy", "href": {"type": "path", "id": "privacy"}}
      ],
      "social": [
        {"service": "facebook", "url": "https://www.facebook.com/Findmyecommb2b-573457846497057"},
        {"service": "twitter", "url": "https://twitter.com/FindMyEcommB2B"},
        {"service": "instagram", "url": "https://www.instagram.com/findmyecomm"},
        {"service": "linkedin", "url": "https://www.linkedin.com/company/findmyecommb2b"}
  	],
      "copyright": "Copyright FindMyECommB2B Ltd 2019"
    },
{
      "id": "infos_cols",
      "kind": "info",
      "variation": "multi_column",
      "title": "The largest & most trusted online community to rent music studious.",
      "button_color": {"type": "marketplace_data", "id": "primary_color"},
      "button_color_hover": {"type": "marketplace_data", "id": "primary_color_darken"},
      "icon_color": {"type": "marketplace_data", "id": "primary_color"},
      "columns": [
        {
          "title": "Choose your agency",
          "icon": "search",
          "paragraph": "Search and compare agencies from all around the world. All our listings have been reviewed to ensure we work with the best agencies from startups to large agencies. "
        },
        {
          "title": "Connect with Experts",
          "icon": "location-pin-group",
          "paragraph": "Send messages and contact agencies without fees to ensure you find the agency that best fits your business needs. Easily browse and compare agencies by preferred location where each include reviews and testimonials."
        },
        {
          "title": "Let the fun begin ",
          "icon": "mask-happy",
          "paragraph": "Our agencies will ensure that you have a constructive, personalized and seamless experience. You will receive a one on one service where we aim to sure our agencies put your business needs first and guide you to improving and stepping up your game. Find your agency today!"
        }
      ],
      "button_title": "Join FindMyEcommB2B Today",
      "button_path": {"value": "/en/signup"}
},
    {
      "id": "contacts_us",
      "kind": "info",
      "variation": "single_column",
      "title": "Can’t find the agency or service you require?",
      "paragraph": "Contact us now and we will find you the perfect agency to ease the process.",
      "button_color": {"type": "marketplace_data", "id": "primary_color"},
      "button_color_hover": {"type": "marketplace_data", "id": "primary_color_darken"},
      "button_title": "Contact Us",
      "button_path": {"type": "path", "id": "contact_us"}
    }
  ],

  "composition": [
    { "section": {"type": "sections", "id": "hero"}},
    { "section": {"type": "sections", "id": "infos_cols"}},
    { "section": {"type": "sections", "id": "locations"}},
    { "section": {"type": "sections", "id": "listings"}},
    { "section": {"type": "sections", "id": "contacts_us"}},

    { "section": {"type": "sections", "id": "footer"}}
  ],

  "assets": [
    { "id": "default_hero_background", "src": "hero_background.jpg", "content_type": "image/jpeg" },
{"id": "1.jpg", "src": "locations/1.jpg", "content_type": "image/jpeg" },
{"id": "2.jpg", "src": "locations/2.jpg", "content_type": "image/jpeg" },
{"id": "3.jpg", "src": "locations/3.jpg", "content_type": "image/jpeg" },
{"id": "4.jpg", "src": "locations/4.jpg", "content_type": "image/jpeg" }
  ]
}
JSON


  end
  # rubocop:enable Metrics/ModuleLength
end
