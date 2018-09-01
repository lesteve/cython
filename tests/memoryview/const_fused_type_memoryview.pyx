# ticket: 1772
# mode: run
# tag: memoryview

import numpy as np
cimport numpy as np

cimport cython
from cython cimport floating

ARRAY = np.arange(10).astype('float')
ARRAY.flags.writeable = False


def test_function(const floating[:] arr):
    """
    >>> test_function(ARRAY)
    4
    """
    return 4
