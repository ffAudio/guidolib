/*
  GUIDO Library
  Copyright (C) 2014-2017 Grame

  This Source Code Form is subject to the terms of the Mozilla Public
  License, v. 2.0. If a copy of the MPL was not distributed with this
  file, You can obtain one at http://mozilla.org/MPL/2.0/.

  Grame Research Laboratory, 11, cours de Verdun Gensoul 69002 Lyon - France
  research@grame.fr

*/

#ifndef __GMNCodePrintVisitor__
#define __GMNCodePrintVisitor__

#include <ostream>
#include <string>

#include "ARVisitor.h"
#include "defines.h"

class ARMusicalObject;
class ARPositionTag;
class ARMusicalVoice;

class GMNCodePrintVisitor : public ARVisitor
{
public:
             GMNCodePrintVisitor(std::ostream& stream);
    virtual ~GMNCodePrintVisitor() {};
    
    void     visitIn (ARMusicalVoice&  voice);
    void     visitOut(ARMusicalVoice&  voice);
    void     visit   (ARMusicalObject& object);
    void     visit   (ARPositionTag&   positionTag);

private:
    void          printMusicalObject(ARMusicalObject& object) const;
    void          printPositionTag(ARPositionTag& positionTag);
    std::string  *formatTagName(std::string *tagName) const;

    std::ostream *os;
};

#endif
