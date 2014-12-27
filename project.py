from project_settings import *

class Project():
    def __init__(self, name, title="", output_path=OUTPUT_PATH):
        self.output_path = output_path
        self.project_path = output_path + "/" + name
        self.pdf_path = self.project_path + "/" + PDF_SUBFOLDER
        self.data_path = self.project_path + "/" + DATA_SUBFOLDER