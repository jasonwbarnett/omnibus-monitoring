#
# Copyright:: Copyright (c) 2012 Opscode, Inc.
# License:: Apache License, Version 2.0
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
#

name "python-django"
version "1.6.1"

dependency "python"
dependency "pip"

# Install a specific version of Twisted as the latest version doesn't
# work with django
dependency "python-twisted"

build do
  command "#{install_dir}/embedded/bin/pip install -I --build #{project_dir} \
           --install-option=\"--prefix=#{install_dir}/embedded\" \
           django==#{version}"
end
