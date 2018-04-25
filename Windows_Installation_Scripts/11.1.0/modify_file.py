import sys

class ModifyFile:
    """This Class is used to add the content at the desired line of the file"""

    def edit_file(self, filename, linenumber, content_to_be_added):
        """ This module takes the following parameters and perform the addition of content at specific line

            filename - represents the file to read and modify by adding the content
            linenumber - represents the linenumber at which the newly adding content has to be placed
            content_to_be_added - It has the content to be added into the file

            All the above 3 parameters will be taken from Object of the class  
        """
        try:
            with open(filename, "r") as file:
                content = file.readlines()
            file.close()
            content_to_be_added = content_to_be_added + "\n"
            content.insert(linenumber, content_to_be_added)
            with open(filename, "w") as file:
                content = "".join(content)
                file.write(content)
            file.close()
            print("Successfully added the content into the file")
        except NameError:
            print("Check the file object")
        except FileNotFoundError:
            print("Please check the file path you have entered and make sure the file exists at that path")
   

#obj = ModifyFile()
#filepath = str(input("Enter the file path along with the name: "))
#new_content = str(input("Enter the content to be added in the file: "))
#linenumber = int(input("Enter the line number at which the content has to be placed: "))
#obj.edit_file(filepath, linenumber, new_content)

if __name__ == "__main__":
    try:
        filepath = str(sys.argv[1])
        new_content = str(sys.argv[2])
        linenumber = int(sys.argv[3])
        #print("The values are {0}, {1}, {2}".format(filepath, new_content, linenumber))
        obj = ModifyFile()
        obj.edit_file(filepath, linenumber, new_content)
    except ValueError: 
        print("Please make sure that you've passed integer input in the 3rd Parameter (linenumber)")
    except IndexError:
        print("The parameters defined in the module aren't equal to the parameters passed. please check and try again")
