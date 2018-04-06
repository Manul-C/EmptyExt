#

package ManulC::Plugin::Empty;

use ManulC::Class -plugin;

our $VERSION = 'v0.001';

plugin
  demands  => [qw<FEATURE1 FEATURE2>],
  abstract => "Some abstract",
  depends  => [qw<OtherPlugin>],
  after    => [qw<NonRequiredPlugin1 NonRequiredPlugin2>],
  before   => q<NonRequiredPlugin3 NonRequiredPlugin4>,
  class    => {
    'ManulC::Response' => 'ManulC::Plugin::Empty::Response',
    'ManulC::UI'       => 'UI',                              # 'ManulC::Plugin::Empty::' will be prepended automatically
  },
  ;

1;

## Copyright 2018 by Vadim Belman
##
## Licensed under the Apache License, Version 2.0 (the "License");
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at
##
##  http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.
