defmodule LeaseWeb.RescueImages do
  
  def list() do
    LeaseWeb.Client.get("rescueImages") 
  end
end
