defmodule LeaseWeb.BareMetal do

	def list() do
		LeaseWeb.Client.get("bareMetals")
	end

	def retrieve (bare_id) do
		LeaseWeb.Client.get("bareMetals/#{bare_id}")
	end

	def update(bare_id, data) do
		LeaseWeb.Client.put("bareMetals/#{bare_id}", data)
	end

	def switchPort(bare_id) do
		LeaseWeb.Client.get("bareMetals/#{bare_id}/switchPort")
	end

	def switchPortOpen(bare_id) do
		LeaseWeb.Client.get("bareMetals/#{bare_id}/switchPort/open")
	end

	def switchPortClose(bare_id) do
		LeaseWeb.Client.post("bareMetals/#{bare_id}/switchPort/close")
	end

	def powerStatus(bare_id) do
		LeaseWeb.Client.get("bareMetals/#{bare_id}/powerStatus")
	end

	def listIp(bare_id) do
		LeaseWeb.Client.get("bareMetals/#{bare_id}/ips")
	end

	def retrieveIp(bare_id, ip) do
		LeaseWeb.Client.get("bareMetals/#{bare_id}/ips/#{ip}")
	end

	def updateIp(bare_id, ip,data) do
		LeaseWeb.Client.put("bareMetals/#{bare_id}/ips/#{ip}", data)
	end

	def networkUsage(bare_id) do
		LeaseWeb.Client.get("bareMetals/#{bare_id}/networkUsage")
	end

	def bandwidth(bare_id) do
		LeaseWeb.Client.get("bareMetals/#{bare_id}/networkUsage/bandwidth")
	end

	def datatraffic(bare_id) do
		LeaseWeb.Client.get("bareMetals/#{bare_id}/networkUsage/datatraffic")
	end

	def reboot(bare_id) do
		LeaseWeb.Client.get("bareMetals/#{bare_id}/powerCycle")
	end

	def reinstall(bare_id, data) do
		LeaseWeb.Client.post("bareMetals/#{bare_id}/install", data)
	end

	def rescueMode(bare_id, data) do
		LeaseWeb.Client.post("bareMetals/#{bare_id}/rescueMode", data)
	end

	def retrieveRootPwd(bare_id) do
		LeaseWeb.Client.get("bareMetals/#{bare_id}/rootPassword")
	end

	def intallationStatus(bare_id) do
		LeaseWeb.Client.get("bareMetals/#{bare_id}/intallationStatus")
	end

	def dhcplist(bare_id) do
		LeaseWeb.Client.get("bareMetals/#{bare_id}/leases")
	end

	def dhcpcreate(bare_id, data) do
		LeaseWeb.Client.post("bareMetals/#{bare_id}/leases", data)
	end

	def dhcpdelete(bare_id) do
		LeaseWeb.Client.delete("bareMetals/#{bare_id}/leases")
	end

	def dhcpretrieve(bare_id, mac_id) do
		LeaseWeb.Client.get("bareMetals/#{bare_id}/leases/#{mac_id}")
	end

	def dhcpdelete(bare_id, mac_id) do
		LeaseWeb.Client.delete("bareMetals/#{bare_id}/leases/#{mac_id}")
	end
end
