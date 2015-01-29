from clep_m import *
from wado_m import *
from caes_m import *
from kai_m import *

# force_strings = ForceCloudStringsMelodyUp(name="caes-cloud-strings-melody-up")
# force_strings.tally_loop()

c = CaesiumMaterial()
c.force_strings_melody()
print(c.material["pitch"]["accents"])
