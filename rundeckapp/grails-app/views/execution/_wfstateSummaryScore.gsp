%{--
  Copyright 2013 SimplifyOps Inc, <http://simplifyops.com>

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
  --}%


        <table class="table table-bordered table-condensed">

            <tr>
                <th colspan="4" class="text-muted table-footer text-small">
                    Node Summary
                </th>
            </tr>
            <tr>
                <th style="width: 25%" class="text-muted text-center h5 text-header">Complete</th>
                <th style="width: 25%" class="text-muted text-center h5 text-header">Failed</th>
                <th style="width: 25%" class="text-muted text-center h5 text-header">Incomplete</th>
                <th style="width: 25%" class="text-muted text-center h5 text-header">Not Started</th>
            </tr>
            <tr>
                <td>
                    <div class="text-center">
                        <span class="h1 text-muted"
                              data-bind="text: percentageFixed(completedNodes().length,activeNodes().length) + '%'"></span>
                    </div>

                    <div class="text-center">
                        <span class="text-muted"
                              data-bind="text: completedNodes().length+'/'+activeNodes().length"></span>
                    </div>
                </td>

                <td>

                    <div class="text-center">
                        <span class=" h1"
                              data-bind="css: {'text-danger': failedNodes().length > 0 , 'text-muted': failedNodes().length < 1 } ">
                            <span data-bind="text: failedNodes().length"></span>
                        </span>
                    </div>
                </td>
                <td>
                    <div class="text-center">

                        <span class=" h1"
                              data-bind="css: {'text-warning': partialNodes().length > 0 , 'text-muted': partialNodes().length < 1 } ">
                            <span class="" data-bind="text: partialNodes().length"></span>
                        </span>

                    </div>
                </td>
                <td>

                    <div class="text-center">
                        <span class=" h1"
                              data-bind="css: {'text-warning': notstartedNodes().length > 0 , 'text-muted': notstartedNodes().length < 1 } ">
                            <span class="" data-bind="text: notstartedNodes().length"></span>
                        </span>
                    </div>

                </td>
            </tr>
        </table>
