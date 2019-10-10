defmodule Bunq do
  def create_installation(pub) do
    client = client()
    request = %{
      "client_public_key" => pub
    }
    Tesla.post(client, "/installation", request)
  end

  def create_device_server(token, priv) do
    client = client(token, priv)
    request = %{
      "description" => "bunq.ex",
      "secret" => "sandbox_7056258d8858873c17b4bf96f9b1b1e9f235b9cf80bb79c81a33301a",
      "permitted_ips" => ["*"]
    }
    Tesla.post(client, "/device-server", request)
  end

  def create_session(token, priv) do
    client = client(token, priv)
    request = %{
      "secret" => "sandbox_7056258d8858873c17b4bf96f9b1b1e9f235b9cf80bb79c81a33301a"
    }
    Tesla.post(client, "/session-server", request)
  end

  def get_monetary_accounts(user_id, token, priv) do
    client = client(token, priv)
    Tesla.get(client, "/user/#{user_id}/monetary-account")
  end

  defp client() do
    middleware = [
      {Tesla.Middleware.BaseUrl, Application.get_env(:bunq, :base_url)},
      Tesla.Middleware.JSON,
      {Tesla.Middleware.Headers, default_headers()}
    ]
    Tesla.client(middleware)
  end

  defp client(token, priv) do
    headers = [{"X-Bunq-Client-Authentication", token} | default_headers()]
    middleware = [
      {Tesla.Middleware.BaseUrl, Application.get_env(:bunq, :base_url)},
      Tesla.Middleware.JSON,
      {Tesla.Middleware.Headers, headers},
      {Bunq.RequestSigner, priv}
    ]
    Tesla.client(middleware)
  end

  defp default_headers do
    [
      {"Cache-Control", "no-cache"},
      {"User-Agent", "bunq.ex/#{Application.spec(:bunq, :vsn)}"},
      {"X-Bunq-Language", "nl_NL"},
      {"X-Bunq-Region", "nl_NL"},
      {"X-Bunq-Client-Request-Id", UUID.uuid4()},
      {"X-Bunq-Geolocation", "0 0 0 0 000"}
    ]
  end
end
