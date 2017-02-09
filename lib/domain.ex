defmodule LeaseWeb.Doamin do
  

  def list() do
    LeaseWeb.Client.get("domains")
  end
  
  def get_info(domain) do
    LeaseWeb.Client.get("domains/#{domain}")
  end

  def update(domain,data) do
    LeaseWeb.Client.put("domains/#{domain}",data)
  end

  def dnsrecords(domain) do
    LeaseWeb.Client.get("domains/#{domain}/dnsRecords")
  end

  def createdns(domain, data) do
    LeaseWeb.Client.post("domains/#{domain}/dnsRecords",data)
  end

  def retrievedns(domain, rid ) do
    LeaseWeb.Client.get("domains/#{domain}/dnsRecords/i#{rid}")
  end

  def udpatedns(domain, rid ,data) do
    LeaseWeb.Client.put("domains/#{domain}/dnsRecords/#{rid}",data)
  end

  def deletedns(domain, rid) do
    LeaseWeb.Client.delete("domains/#{domain}/dnsRecords/#{rid}")
  end
end
