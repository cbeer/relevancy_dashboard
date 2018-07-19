class Search < ApplicationRecord
  has_many :search_results

  after_save :generate_search_results_data

  def generate_search_results_data
    GenerateSearchResultsDataJob.perform_now(self)
  end

  def params
    Rack::Utils.parse_nested_query query_params
  end
end
