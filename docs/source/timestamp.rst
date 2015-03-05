Timestamp type
==============

The Timestamp type is immutable and contains two fields: ``timestamp`` and ``value``. ::

    immutable Timestamp{T}
        timestamp::Union(Date,DateTime,Days)
        value::T
    end 

timestamp
---------

The timestamp of the Timestamp type can hold one of three types:

+----------+------------------------------+
| Type     | Representation               |
+==========+==============================+ 
| Date     | Daily intervals and larger   | 
+----------+------------------------------+ 
| DateTime | Intervals less than 1 day    | 
+----------+------------------------------+ 
| Day      | Daily span in integer format |
+----------+------------------------------+

value
-----

Since the ``value`` field is parameterized, it can hold any type. We will see later when constructing an ``Array{Timestamp}`` 
that this allows for a pseudo-heterogenous array structure.
