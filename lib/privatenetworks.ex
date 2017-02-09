defmodule LeaseWeb.PrivateNetworks do


  def list() do
    LeaseWeb.Client.get("privateNetworks")
  end

  def create() do
    LeaseWeb.Client.post("privateNetworks")
  end

  def info(id) do
    LeaseWeb.Client.get("privateNetworks/#{id}")
  end

  def delete(id) do
    LeaseWeb.Client.delete("privateNetworks/#{id}")
  end

  def add_baremetals( id, data) do
    LeaseWeb.Client.post("privateNetworks/#{id}/bareMetals", data)
  end 

   def delete_baremetals(id, bare_metal_id) do
    LeaseWeb.Client.delete("privateNetworks/#{id}/bareMetals/#{bare_metal_id}")
  end


end 
