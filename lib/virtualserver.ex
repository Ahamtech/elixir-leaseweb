defmodule LeaseWeb.VirtualServer do
  
  def list_servers() do
    LeaseWeb.Client.get("virtualServers")
  end

  def virtual_server_info(id) do
    LeaseWeb.Client.get("virtualServers/#{id}")
  end

  def virtual_server_powerOn(id) do
    LeaseWeb.Client.post("virtualServers/#{id}/powerOn")
  end

  def virtual_server_powerOff(id) do
    LeaseWeb.Client.post("virtualServers/#{id}/powerOff")
  end

   def virtual_server_reboot(id) do
    LeaseWeb.Client.post("virtualServers/#{id}/reboot")
  end

end
