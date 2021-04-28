 # encoding : utf-8

MoneyRails.configure do |config|

  # To set the default currency
  #
  config.default_currency = :usd
  config.no_cents_if_whole = false

  # Set default bank object
  #
  # Example:
  # config.default_bank = EuCentralBank.new

  # Add exchange rates to current money bank object.
  # (The conversion rate refers to one direction only)
  #
  # Example:
  # config.add_rate "USD", "CAD", 1.24515
  # config.add_rate "CAD", "USD", 0.803115

  # To handle the inclusion of validations for monetized fields
  # The default value is true
  #
  # config.include_validations = true

  # Default ActiveRecord migration configuration values for columns:
  #
  # config.amount_column = { prefix: '',           # column name prefix
  #                          postfix: '_cents',    # column name  postfix
  #                          column_name: nil,     # full column name     (overrides prefix, postfix and accessor name)
  #                          type: :integer,       # column type
   #                          present: true,        # column will be created
  #                          null: false,          # other options will be    treated as column options
  #                          default: 0
  #                        }
  #
  #config.currency_column = { prefix: '',
  #                         postfix: '_currency',
  #                         column_name: nil,
  #                       type: :string,
  #                   present: true,
  #                    null: false,
  #                   default: 'GBP'
  #                }

  # Register a custom currency
  #
  # Example:
  # config.register_currency = {
  #   :priority            => 1,
  #   :iso_code            => "EU4",
  #   :name                => "Euro with subunit of 4 digits",
  #   :symbol              => "€",
  #   :symbol_first        => true,
  #   :subunit             => "Subcent",
  #   :subunit_to_unit     => 10000,
  #   :thousands_separator => ".",
  #   :decimal_mark        => ","
  # }

  config.register_currency = {
    "priority": 1,
    "iso_code": "GBP",
    "name": "British Pound",
    "symbol": "£",
    "alternate_symbols": [],
    "subunit": "Penny",
    "subunit_to_unit": 100,
    "symbol_first": true,
    "html_entity": "&#x00A3;",
    "decimal_mark": ".",
    "thousands_separator": ",",
    "iso_numeric": "826",
    "smallest_denomination": 1
  }

  config.register_currency = {
    "priority": 2,
    "iso_code": "USD",
    "name": "United States Dollar",
    "symbol": "$",
    "alternate_symbols": ["US$"],
    "subunit": "Cent",
    "subunit_to_unit": 100,
    "symbol_first": true,
    "html_entity": "$",
    "decimal_mark": ".",
    "thousands_separator": ",",
    "iso_numeric": "840",
    "smallest_denomination": 1,
  }

  config.register_currency = {
    "priority": 3,
    "iso_code": "EUR",
    "name": "Euro",
    "symbol": "€",
    "alternate_symbols": [],
    "subunit": "Cent",
    "subunit_to_unit": 100,
    "symbol_first": true,
    "html_entity": "&#x20AC;",
    "decimal_mark": ",",
    "thousands_separator": ".",
    "iso_numeric": "978",
    "smallest_denomination": 1
  }



  # Set default money format globally.
  # Default value is nil meaning "ignore this option".
  # Example:
  #
  # config.default_format = {
  #   :no_cents_if_whole => nil,
  #   :symbol => nil,
  #   :sign_before_symbol => nil
  # }

  # Set default raise_error_on_money_parsing option
  # It will be raise error if assigned different currency
  # The default value is false
  #
  # Example:
  # config.raise_error_on_money_parsing = false
end
