module CompaniesHelper
  def company
    @decorated_company ||= @company
  end
end
