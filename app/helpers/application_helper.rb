module ApplicationHelper

  def bootstrap_class_for(name)
    {
      success: "alert-success",
      error: "alert-danger",
      warning: "alert-warning",
      alert: "alert-warning",
      notice: "alert-info",
    }[name.to_sym] || name
  end
end
