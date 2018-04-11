#

package ManulC::Ext::Empty;

use ManulC::Class -extension;

our $VERSION = 'v0.001.001';

extension
  demands  => [qw<FEATURE1 FEATURE2>],
  abstract => "Some abstract",
  depends  => [qw<OtherExt>],
  after    => [qw<NonRequiredExt1 NonRequiredExt2>],
  before   => q<NonRequiredExt3 NonRequiredExt4>,
  class    => {
    'ManulC::Response' => 'ManulC::Ext::Empty::Response',
    'ManulC::UI'       => 'UI',                              # 'ManulC::Ext::Empty::' will be prepended automatically
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
