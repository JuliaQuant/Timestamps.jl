Mathematical operators
======================

Mathematical and comparison operations between different Timestamp objects evaluates the ``values`` field (and checks that it 
makes sense to do so) plus returns the time distance in days between the objects. 

mathematical 
------------

Mathematical operations will only work between types for which these operations are defined. Currently supported include the 
following:

+-----------+-----------------------------+
| Operator  | Description                 |
+===========+=============================+
| ``+``     | mathematical addition       |
+-----------+-----------------------------+
| ``-``     | mathematical subtraction    |
+-----------+-----------------------------+
| ``*``     | mathematical multiplication |
+-----------+-----------------------------+
| ``/``     | mathematical division       |
+-----------+-----------------------------+

An example in REPL::

    julia> foo = Timestamp(Date(2000,1,1), 100);

    julia> bar = Timestamp(Date(2000,1,3), 10);

    julia> foo + bar
    2 days | 110

    julia> baz = Timestamp(Date(2000,1,1), "hello ")
    2000-01-01 | hello 

    julia> qux = Timestamp(Date(2000,1,3), "world")
    2000-01-03 | world

    julia> baz * qux
    2 days | hello world

comparison
----------

Comparison operators behave similarly to their mathematical counterparts. The following comparisons are supported.

+----------+----------------------------------+
| Operator | Description                      |
+==========+==================================+
| ``>``    | greater-than comparision         |
+----------+----------------------------------+
| ``<``    | less-than comparision            |
+----------+----------------------------------+
| ``==``   | equivalent comparison            |
+----------+----------------------------------+
| ``>=``   | greater-than or equal comparison |
+----------+----------------------------------+
| ``<=``   | less-than or equal comparison    |
+----------+----------------------------------+

Some more examples in REPL with the objects defined above::

    julia> foo > bar
    2 days | true

    julia> baz > qux
    2 days | false
