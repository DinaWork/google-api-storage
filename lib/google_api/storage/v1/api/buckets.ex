# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Storage.V1.Api.Buckets do
  @moduledoc """
  API calls for all endpoints tagged `Buckets`.
  """

  alias GoogleApi.Storage.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Permanently deletes an empty bucket.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Storage.V1.Connection.t`) - Connection to server
  *   `bucket` (*type:* `String.t`) - Name of a bucket.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:ifMetagenerationMatch` (*type:* `String.t`) - If set, only deletes the bucket if its metageneration matches this value.
      *   `:ifMetagenerationNotMatch` (*type:* `String.t`) - If set, only deletes the bucket if its metageneration does not match this value.
      *   `:provisionalUserProject` (*type:* `String.t`) - The project to be billed for this request if the target bucket is requester-pays bucket.
      *   `:userProject` (*type:* `String.t`) - The project to be billed for this request. Required for Requester Pays buckets.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storage_buckets_delete(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def storage_buckets_delete(connection, bucket, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :ifMetagenerationMatch => :query,
      :ifMetagenerationNotMatch => :query,
      :provisionalUserProject => :query,
      :userProject => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/storage/v1/b/{bucket}", %{
        "bucket" => URI.encode(bucket, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Returns metadata for the specified bucket.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Storage.V1.Connection.t`) - Connection to server
  *   `bucket` (*type:* `String.t`) - Name of a bucket.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:ifMetagenerationMatch` (*type:* `String.t`) - Makes the return of the bucket metadata conditional on whether the bucket's current metageneration matches the given value.
      *   `:ifMetagenerationNotMatch` (*type:* `String.t`) - Makes the return of the bucket metadata conditional on whether the bucket's current metageneration does not match the given value.
      *   `:projection` (*type:* `String.t`) - Set of properties to return. Defaults to noAcl.
      *   `:provisionalUserProject` (*type:* `String.t`) - The project to be billed for this request if the target bucket is requester-pays bucket.
      *   `:userProject` (*type:* `String.t`) - The project to be billed for this request. Required for Requester Pays buckets.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Storage.V1.Model.Bucket{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storage_buckets_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Storage.V1.Model.Bucket.t()} | {:error, Tesla.Env.t()}
  def storage_buckets_get(connection, bucket, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :ifMetagenerationMatch => :query,
      :ifMetagenerationNotMatch => :query,
      :projection => :query,
      :provisionalUserProject => :query,
      :userProject => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/storage/v1/b/{bucket}", %{
        "bucket" => URI.encode(bucket, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.Bucket{}])
  end

  @doc """
  Returns an IAM policy for the specified bucket.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Storage.V1.Connection.t`) - Connection to server
  *   `bucket` (*type:* `String.t`) - Name of a bucket.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:provisionalUserProject` (*type:* `String.t`) - The project to be billed for this request if the target bucket is requester-pays bucket.
      *   `:userProject` (*type:* `String.t`) - The project to be billed for this request. Required for Requester Pays buckets.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Storage.V1.Model.Policy{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storage_buckets_get_iam_policy(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Storage.V1.Model.Policy.t()} | {:error, Tesla.Env.t()}
  def storage_buckets_get_iam_policy(connection, bucket, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :provisionalUserProject => :query,
      :userProject => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/storage/v1/b/{bucket}/iam", %{
        "bucket" => URI.encode(bucket, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.Policy{}])
  end

  @doc """
  Creates a new bucket.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Storage.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - A valid API project identifier.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:predefinedAcl` (*type:* `String.t`) - Apply a predefined set of access controls to this bucket.
      *   `:predefinedDefaultObjectAcl` (*type:* `String.t`) - Apply a predefined set of default object access controls to this bucket.
      *   `:projection` (*type:* `String.t`) - Set of properties to return. Defaults to noAcl, unless the bucket resource specifies acl or defaultObjectAcl properties, when it defaults to full.
      *   `:provisionalUserProject` (*type:* `String.t`) - The project to be billed for this request if the target bucket is requester-pays bucket.
      *   `:userProject` (*type:* `String.t`) - The project to be billed for this request.
      *   `:body` (*type:* `GoogleApi.Storage.V1.Model.Bucket.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Storage.V1.Model.Bucket{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storage_buckets_insert(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Storage.V1.Model.Bucket.t()} | {:error, Tesla.Env.t()}
  def storage_buckets_insert(connection, project, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :predefinedAcl => :query,
      :predefinedDefaultObjectAcl => :query,
      :projection => :query,
      :provisionalUserProject => :query,
      :userProject => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/storage/v1/b", %{})
      |> Request.add_param(:query, :project, project)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.Bucket{}])
  end

  @doc """
  Retrieves a list of buckets for a given project.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Storage.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - A valid API project identifier.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:maxResults` (*type:* `integer()`) - Maximum number of buckets to return in a single response. The service will use this parameter or 1,000 items, whichever is smaller.
      *   `:pageToken` (*type:* `String.t`) - A previously-returned page token representing part of the larger set of results to view.
      *   `:prefix` (*type:* `String.t`) - Filter results to buckets whose names begin with this prefix.
      *   `:projection` (*type:* `String.t`) - Set of properties to return. Defaults to noAcl.
      *   `:provisionalUserProject` (*type:* `String.t`) - The project to be billed for this request if the target bucket is requester-pays bucket.
      *   `:userProject` (*type:* `String.t`) - The project to be billed for this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Storage.V1.Model.Buckets{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storage_buckets_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Storage.V1.Model.Buckets.t()} | {:error, Tesla.Env.t()}
  def storage_buckets_list(connection, project, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query,
      :prefix => :query,
      :projection => :query,
      :provisionalUserProject => :query,
      :userProject => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/storage/v1/b", %{})
      |> Request.add_param(:query, :project, project)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.Buckets{}])
  end

  @doc """
  Locks retention policy on a bucket.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Storage.V1.Connection.t`) - Connection to server
  *   `bucket` (*type:* `String.t`) - Name of a bucket.
  *   `if_metageneration_match` (*type:* `String.t`) - Makes the operation conditional on whether bucket's current metageneration matches the given value.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:provisionalUserProject` (*type:* `String.t`) - The project to be billed for this request if the target bucket is requester-pays bucket.
      *   `:userProject` (*type:* `String.t`) - The project to be billed for this request. Required for Requester Pays buckets.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Storage.V1.Model.Bucket{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storage_buckets_lock_retention_policy(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Storage.V1.Model.Bucket.t()} | {:error, Tesla.Env.t()}
  def storage_buckets_lock_retention_policy(
        connection,
        bucket,
        if_metageneration_match,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :provisionalUserProject => :query,
      :userProject => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/storage/v1/b/{bucket}/lockRetentionPolicy", %{
        "bucket" => URI.encode(bucket, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :ifMetagenerationMatch, if_metageneration_match)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.Bucket{}])
  end

  @doc """
  Patches a bucket. Changes to the bucket will be readable immediately after writing, but configuration changes may take time to propagate.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Storage.V1.Connection.t`) - Connection to server
  *   `bucket` (*type:* `String.t`) - Name of a bucket.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:ifMetagenerationMatch` (*type:* `String.t`) - Makes the return of the bucket metadata conditional on whether the bucket's current metageneration matches the given value.
      *   `:ifMetagenerationNotMatch` (*type:* `String.t`) - Makes the return of the bucket metadata conditional on whether the bucket's current metageneration does not match the given value.
      *   `:predefinedAcl` (*type:* `String.t`) - Apply a predefined set of access controls to this bucket.
      *   `:predefinedDefaultObjectAcl` (*type:* `String.t`) - Apply a predefined set of default object access controls to this bucket.
      *   `:projection` (*type:* `String.t`) - Set of properties to return. Defaults to full.
      *   `:provisionalUserProject` (*type:* `String.t`) - The project to be billed for this request if the target bucket is requester-pays bucket.
      *   `:userProject` (*type:* `String.t`) - The project to be billed for this request. Required for Requester Pays buckets.
      *   `:body` (*type:* `GoogleApi.Storage.V1.Model.Bucket.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Storage.V1.Model.Bucket{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storage_buckets_patch(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Storage.V1.Model.Bucket.t()} | {:error, Tesla.Env.t()}
  def storage_buckets_patch(connection, bucket, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :ifMetagenerationMatch => :query,
      :ifMetagenerationNotMatch => :query,
      :predefinedAcl => :query,
      :predefinedDefaultObjectAcl => :query,
      :projection => :query,
      :provisionalUserProject => :query,
      :userProject => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/storage/v1/b/{bucket}", %{
        "bucket" => URI.encode(bucket, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.Bucket{}])
  end

  @doc """
  Updates an IAM policy for the specified bucket.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Storage.V1.Connection.t`) - Connection to server
  *   `bucket` (*type:* `String.t`) - Name of a bucket.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:provisionalUserProject` (*type:* `String.t`) - The project to be billed for this request if the target bucket is requester-pays bucket.
      *   `:userProject` (*type:* `String.t`) - The project to be billed for this request. Required for Requester Pays buckets.
      *   `:body` (*type:* `GoogleApi.Storage.V1.Model.Policy.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Storage.V1.Model.Policy{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storage_buckets_set_iam_policy(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Storage.V1.Model.Policy.t()} | {:error, Tesla.Env.t()}
  def storage_buckets_set_iam_policy(connection, bucket, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :provisionalUserProject => :query,
      :userProject => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/storage/v1/b/{bucket}/iam", %{
        "bucket" => URI.encode(bucket, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.Policy{}])
  end

  @doc """
  Tests a set of permissions on the given bucket to see which, if any, are held by the caller.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Storage.V1.Connection.t`) - Connection to server
  *   `bucket` (*type:* `String.t`) - Name of a bucket.
  *   `permissions` (*type:* `list(String.t)`) - Permissions to test.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:provisionalUserProject` (*type:* `String.t`) - The project to be billed for this request if the target bucket is requester-pays bucket.
      *   `:userProject` (*type:* `String.t`) - The project to be billed for this request. Required for Requester Pays buckets.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Storage.V1.Model.TestIamPermissionsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storage_buckets_test_iam_permissions(
          Tesla.Env.client(),
          String.t(),
          list(String.t()),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Storage.V1.Model.TestIamPermissionsResponse.t()}
          | {:error, Tesla.Env.t()}
  def storage_buckets_test_iam_permissions(
        connection,
        bucket,
        permissions,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :provisionalUserProject => :query,
      :userProject => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/storage/v1/b/{bucket}/iam/testPermissions", %{
        "bucket" => URI.encode(bucket, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :permissions, permissions)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.TestIamPermissionsResponse{}])
  end

  @doc """
  Updates a bucket. Changes to the bucket will be readable immediately after writing, but configuration changes may take time to propagate.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Storage.V1.Connection.t`) - Connection to server
  *   `bucket` (*type:* `String.t`) - Name of a bucket.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:ifMetagenerationMatch` (*type:* `String.t`) - Makes the return of the bucket metadata conditional on whether the bucket's current metageneration matches the given value.
      *   `:ifMetagenerationNotMatch` (*type:* `String.t`) - Makes the return of the bucket metadata conditional on whether the bucket's current metageneration does not match the given value.
      *   `:predefinedAcl` (*type:* `String.t`) - Apply a predefined set of access controls to this bucket.
      *   `:predefinedDefaultObjectAcl` (*type:* `String.t`) - Apply a predefined set of default object access controls to this bucket.
      *   `:projection` (*type:* `String.t`) - Set of properties to return. Defaults to full.
      *   `:provisionalUserProject` (*type:* `String.t`) - The project to be billed for this request if the target bucket is requester-pays bucket.
      *   `:userProject` (*type:* `String.t`) - The project to be billed for this request. Required for Requester Pays buckets.
      *   `:body` (*type:* `GoogleApi.Storage.V1.Model.Bucket.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Storage.V1.Model.Bucket{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storage_buckets_update(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Storage.V1.Model.Bucket.t()} | {:error, Tesla.Env.t()}
  def storage_buckets_update(connection, bucket, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :ifMetagenerationMatch => :query,
      :ifMetagenerationNotMatch => :query,
      :predefinedAcl => :query,
      :predefinedDefaultObjectAcl => :query,
      :projection => :query,
      :provisionalUserProject => :query,
      :userProject => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/storage/v1/b/{bucket}", %{
        "bucket" => URI.encode(bucket, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.Bucket{}])
  end
end
