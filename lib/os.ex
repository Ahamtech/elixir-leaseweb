defmodule LeaseWeb.OS do
  

  def list() do 
    LeaseWeb.Client.get("operatingSystems")
  end

  def retrieve(id) do
    LeaseWeb.Client.get("operatingSystems/#{id}")
  end

  def controlPanels(id) do 
    LeaseWeb.Client.get("operatingSystems/#{id}/controlPanels")
  end

  def controlPanels_list(id, cpanel) do 
    LeaseWeb.Client.get("operatingSystems/#{id}/controlPanels/#{cpanel}")
  end


  #TODO 
  def partition_schema(id) do 
    LeaseWeb.Client.get("operatingSystems/#{id}/partitionsSchema")
  end 
end
