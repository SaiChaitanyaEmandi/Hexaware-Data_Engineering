def addr(**kwargs):
   for k,v in kwargs.items():
      print ("{}:{}".format(k,v))


print ("pass two keyword args")
addr(Name="John", City="Mumbai")