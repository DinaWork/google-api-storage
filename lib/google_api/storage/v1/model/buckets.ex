# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Storage.V1.Model.Buckets do
  @moduledoc """
  A list of buckets.

  ## Attributes

  - items ([Bucket]): The list of items. Defaults to: `null`.
  - kind (String.t): The kind of item this is. For lists of buckets, this is always storage#buckets. Defaults to: `null`.
  - nextPageToken (String.t): The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.Storage.V1.Model.Bucket.t()),
          :kind => any(),
          :nextPageToken => any()
        }

  field(:items, as: GoogleApi.Storage.V1.Model.Bucket, type: :list)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.Buckets do
  def decode(value, options) do
    GoogleApi.Storage.V1.Model.Buckets.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.Buckets do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
