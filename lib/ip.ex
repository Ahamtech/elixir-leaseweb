defmodule LeaseWeb.IP do

  def list() do
    LeaseWeb.Client.get("ips")
  end
  
  def get_ip(ip) do
    LeaseWeb.Client.get("ips/#{ip}")
  end

  def update_ip(ip, data) do 
    LeaseWeb.Client.put("ips/#{ip}", data )
   end

end
