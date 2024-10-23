# apexDevs

**1 - Get SObject Type Name : Invocable method**

**    **Besoin** :

  When a task is created, it is impossible via a formula or a flow to retrieve the Name of the object contained in the ‘Related To’ field (API :
  WhatId), because this field is a Polymorph field and can accommodate all the objects in the platform.
  You need to be able to indicate the name of the object in a task field so that the object's API name can be used by other automated systems to filter or
  display certain tasks depending on the type of object.
  Use of a method that can be invoked in a screen flow and that retrieves the object name from within the flow.
