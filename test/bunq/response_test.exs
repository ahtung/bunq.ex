defmodule ResponseTest do
  use ExUnit.Case
  doctest Bunq.Response

  # test "decode" do
  #   response = %Bunq.Response{
  #     Response: [
  #       %{"Id" => %{"id" => 214631}},
  #       %{
  #         "Token" => %{
  #           "created" => "2019-09-20 07:20:37.797052",
  #           "id" => 2979425,
  #           "token" => "a63674f6323429bbed7c14677f557028e192540bf51193ea1e5b68b01918eff8",
  #           "updated" => "2019-09-20 07:20:37.797052"
  #         }
  #       },
  #       %{
  #         "ServerPublicKey" => %{
  #           "server_public_key" => "-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA1TBe3abUkyH1dnTRjWoP\nMGz020G+RuNJCl00wl1uRyzgaH3l4jO3LTfBNc0HODUFjQSNGI3QfzeJVPOQ9TeL\nvmYARftvHuNAP7tPpb/ITm/8hT9Bu+jAyVMK8nxDfeCMujoAK0Ifn2pPYMGRBJCA\nE2tnzVqRLuXfzp+xpZa2AnGvFuaupJVtaPia6YAVUl2vQFeATaKI5YIsrpJnFP57\nmkBsoOU+Krdow9XPpDAnUVvTXfk+nNC1HE5SwGT6EkHUxmPKCw7M+qE6Kyss0zNK\n55+UgWbMJnL+FZL17O9DhIIw/RtGhHxHs4u5iFcp/qoPdg/axySbWqj84OkmvH54\nawIDAQAB\n-----END PUBLIC KEY-----\n"
  #         }
  #       }
  #     ]
  #   }
  #
  #   assert Poison.decode!(Poison.encode!(response), as: %Bunq.Response{}) == %Bunq.Response{
  #     Response: [
  #       %Bunq.Response.Id{
  #         id: 214615
  #       },
  #       %Bunq.Response.Token{
  #         created: "2019-09-20 07:14:01.398585",
  #         id: 2979392,
  #         token: "d171a2e030448aa4e21a38c16f77c6330cd6843dc5cbe47d4fec423bbaa7f04a",
  #         updated: "2019-09-20 07:14:01.398585"
  #       },
  #       %Bunq.Response.ServerPublicKey{
  #         server_public_key: "-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2P4q0M0ekqmp/wBFLiLv\nVeqGzSgFEoubmqxETzZQ4d4bH4Oo7BWFrf1ojNc6nDSZ2vJA8+Oa+q7JjtZcEwj/\niV+4rJcWPxUzbCEX94dbnW7T8JjDHuHjpxpySr0CDDDh766Umw6ucsQkFQi/M+VT\nzIDSVhbFDJ3bb6WhILRHp5xTKkalQTVRYKxb/iPrd+CXjopepHqF6qymt0xvKfgO\nYkHo8UpJXKegzOwsNysuSe/flhOssAfyRbZNzhe1p0v90UlnOfC0+PW74zrm4BFh\nRA1XdBGEhlz7afDZb3uFhqrrBD3in4kv+dCeCtmNvg3G2H2iW72b9PXPJ1pRALyk\nJwIDAQAB\n-----END PUBLIC KEY-----\n"
  #       }
  #     ]
  #   }
  # end
end
