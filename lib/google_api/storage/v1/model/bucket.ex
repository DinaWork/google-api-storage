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

defmodule GoogleApi.Storage.V1.Model.Bucket do
  @moduledoc """
  A bucket.

  ## Attributes

  - acl ([BucketAccessControl]): Access controls on the bucket. Defaults to: `null`.
  - billing (BucketBilling):  Defaults to: `null`.
  - cors ([BucketCors]): The bucket&#39;s Cross-Origin Resource Sharing (CORS) configuration. Defaults to: `null`.
  - defaultEventBasedHold (boolean()): The default value for event-based hold on newly created objects in this bucket. Event-based hold is a way to retain objects indefinitely until an event occurs, signified by the hold&#39;s release. After being released, such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false. Objects under event-based hold cannot be deleted, overwritten or archived until the hold is removed. Defaults to: `null`.
  - defaultObjectAcl ([ObjectAccessControl]): Default access controls to apply to new objects when no ACL is provided. Defaults to: `null`.
  - encryption (BucketEncryption):  Defaults to: `null`.
  - etag (String.t): HTTP 1.1 Entity tag for the bucket. Defaults to: `null`.
  - iamConfiguration (BucketIamConfiguration):  Defaults to: `null`.
  - id (String.t): The ID of the bucket. For buckets, the id and name properties are the same. Defaults to: `null`.
  - kind (String.t): The kind of item this is. For buckets, this is always storage#bucket. Defaults to: `null`.
  - labels (%{optional(String.t) &#x3D;&gt; String.t}): User-provided labels, in key/value pairs. Defaults to: `null`.
  - lifecycle (BucketLifecycle):  Defaults to: `null`.
  - location (String.t): The location of the bucket. Object data for objects in the bucket resides in physical storage within this region. Defaults to US. See the developer&#39;s guide for the authoritative list. Defaults to: `null`.
  - logging (BucketLogging):  Defaults to: `null`.
  - metageneration (String.t): The metadata generation of this bucket. Defaults to: `null`.
  - name (String.t): The name of the bucket. Defaults to: `null`.
  - owner (BucketOwner):  Defaults to: `null`.
  - projectNumber (String.t): The project number of the project the bucket belongs to. Defaults to: `null`.
  - retentionPolicy (BucketRetentionPolicy):  Defaults to: `null`.
  - selfLink (String.t): The URI of this bucket. Defaults to: `null`.
  - storageClass (String.t): The bucket&#39;s default storage class, used whenever no storageClass is specified for a newly-created object. This defines how objects in the bucket are stored and determines the SLA and the cost of storage. Values include MULTI_REGIONAL, REGIONAL, STANDARD, NEARLINE, COLDLINE, and DURABLE_REDUCED_AVAILABILITY. If this value is not specified when the bucket is created, it will default to STANDARD. For more information, see storage classes. Defaults to: `null`.
  - timeCreated (DateTime.t): The creation time of the bucket in RFC 3339 format. Defaults to: `null`.
  - updated (DateTime.t): The modification time of the bucket in RFC 3339 format. Defaults to: `null`.
  - versioning (BucketVersioning):  Defaults to: `null`.
  - website (BucketWebsite):  Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acl => list(GoogleApi.Storage.V1.Model.BucketAccessControl.t()),
          :billing => GoogleApi.Storage.V1.Model.BucketBilling.t(),
          :cors => list(GoogleApi.Storage.V1.Model.BucketCors.t()),
          :defaultEventBasedHold => any(),
          :defaultObjectAcl => list(GoogleApi.Storage.V1.Model.ObjectAccessControl.t()),
          :encryption => GoogleApi.Storage.V1.Model.BucketEncryption.t(),
          :etag => any(),
          :iamConfiguration => GoogleApi.Storage.V1.Model.BucketIamConfiguration.t(),
          :id => any(),
          :kind => any(),
          :labels => map(),
          :lifecycle => GoogleApi.Storage.V1.Model.BucketLifecycle.t(),
          :location => any(),
          :logging => GoogleApi.Storage.V1.Model.BucketLogging.t(),
          :metageneration => any(),
          :name => any(),
          :owner => GoogleApi.Storage.V1.Model.BucketOwner.t(),
          :projectNumber => any(),
          :retentionPolicy => GoogleApi.Storage.V1.Model.BucketRetentionPolicy.t(),
          :selfLink => any(),
          :storageClass => any(),
          :timeCreated => DateTime.t(),
          :updated => DateTime.t(),
          :versioning => GoogleApi.Storage.V1.Model.BucketVersioning.t(),
          :website => GoogleApi.Storage.V1.Model.BucketWebsite.t()
        }

  field(:acl, as: GoogleApi.Storage.V1.Model.BucketAccessControl, type: :list)
  field(:billing, as: GoogleApi.Storage.V1.Model.BucketBilling)
  field(:cors, as: GoogleApi.Storage.V1.Model.BucketCors, type: :list)
  field(:defaultEventBasedHold)
  field(:defaultObjectAcl, as: GoogleApi.Storage.V1.Model.ObjectAccessControl, type: :list)
  field(:encryption, as: GoogleApi.Storage.V1.Model.BucketEncryption)
  field(:etag)
  field(:iamConfiguration, as: GoogleApi.Storage.V1.Model.BucketIamConfiguration)
  field(:id)
  field(:kind)
  field(:labels, type: :map)
  field(:lifecycle, as: GoogleApi.Storage.V1.Model.BucketLifecycle)
  field(:location)
  field(:logging, as: GoogleApi.Storage.V1.Model.BucketLogging)
  field(:metageneration)
  field(:name)
  field(:owner, as: GoogleApi.Storage.V1.Model.BucketOwner)
  field(:projectNumber)
  field(:retentionPolicy, as: GoogleApi.Storage.V1.Model.BucketRetentionPolicy)
  field(:selfLink)
  field(:storageClass)
  field(:timeCreated, as: DateTime)
  field(:updated, as: DateTime)
  field(:versioning, as: GoogleApi.Storage.V1.Model.BucketVersioning)
  field(:website, as: GoogleApi.Storage.V1.Model.BucketWebsite)
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.Bucket do
  def decode(value, options) do
    GoogleApi.Storage.V1.Model.Bucket.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.Bucket do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
