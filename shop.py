from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn
@library
class shop:

    @keyword
    def hey_mama(self):
        print("hello")

    @keyword
    def _init_(self):
        BuiltIn().get_library_instance("SeleniumLibrary")

    @keyword
    def sum_of_integers(self,number):
        BuiltIn().get_library_instance("Collections")
        print(number)

