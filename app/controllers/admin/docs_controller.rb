class Admin::DocsController < Admin::BaseController
  inherit_resources
  def show
    redirect_to admin_docs_path
  end
end