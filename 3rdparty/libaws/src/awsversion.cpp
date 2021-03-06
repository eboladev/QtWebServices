/*
 * Copyright 2008 28msec, Inc.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include <libaws/awsversion.h>

#include <string>
#include <sstream>

namespace aws {

   int AWSVersion::theMajorVersion = 0;
   int AWSVersion::theMinorVersion = 9;
   int AWSVersion::thePatchVersion = 2;

  int
  AWSVersion::getAWSMajorVersion() { return theMajorVersion; }

  int
  AWSVersion::getAWSMinorVersion() { return theMinorVersion; }

  int
  AWSVersion::getAWSPatchVersion() { return thePatchVersion; }

  std::string
  AWSVersion::getAWSVersion()
  {
    std::ostringstream lStream;
    lStream << getAWSMajorVersion() << "." << getAWSMinorVersion() << "." << getAWSPatchVersion();
    return lStream.str();
  }

} /* end namespace aws */

