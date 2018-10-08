#!/usr/bin/env python

from libvoikko import Voikko

v = Voikko("fi")
print(v.analyze('astetta'))
