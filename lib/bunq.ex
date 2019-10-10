defmodule Bunq do
  def create_installation(client, pub) do
    request = %{
      "client_public_key" => pub
    }
    Tesla.post(client, "/installation", request)
  end

  def create_device_server(client) do
    request = %{
      "description" => "bunq.ex",
      "secret" => "sandbox_da1ebee63f6215a62478496acf4973bdbfe29097aa0a88c1db00c455",
      "permitted_ips" => ["*"]
    }
    Tesla.post(client, "/device-server", request)
  end

  def create_session(client) do
    request = %{
      "secret" => "sandbox_da1ebee63f6215a62478496acf4973bdbfe29097aa0a88c1db00c455"
    }
    Tesla.post(client, "/session-server", request)
  end

  def get_monetary_accounts(client, user_id) do
    Tesla.get(client, "/user/#{user_id}/monetary-account")
  end

  def client() do
    middleware = [
      {Tesla.Middleware.BaseUrl, Application.get_env(:bunq, :base_url)},
      Tesla.Middleware.JSON,
      {Tesla.Middleware.Headers, default_headers()}
    ]
    Tesla.client(middleware)
  end

  def client(token, priv, server_public_key) do
    headers = [{"X-Bunq-Client-Authentication", token} | default_headers()]
    middleware = [
      {Tesla.Middleware.BaseUrl, Application.get_env(:bunq, :base_url)},
      Tesla.Middleware.JSON,
      {Tesla.Middleware.Headers, headers},
      {Bunq.RequestSigner, priv},
      {Bunq.ResponseVerifier, server_public_key}
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
