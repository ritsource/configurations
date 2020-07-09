import sys

class Session:
    def __init__(self, name, dirname):
        self.props = {}
        self.props.name = name
        self.props.dirname = dirname
        self.props.windows = []

    def add_windows(self, windows):
        self.props.windows.extend(windows)
    
    def remove_window(self, index):
        if index >= 0:
            del self.props.windows[index:index+1]

class Window:
    def __init__(self, name, panes):
        self.props = {}
        self.props.name = name
        self.props.keyboard_input = ""
        if pane:
            self.props.panes = panes
        else:
            self.props.panes = [ Pane() ]

    def add_panes(self, panes):
        self.props.panes.extend(panes)

    def remove_pane(self, index):
        if index >= 0:
            del self.props.panes[index:index+1]

    def keyboard_input(self, input_str):
        self.props.keyboard_input = input_str

class Pane:
    def __init__(self):
        pass

def main():
    print(sys.argv)
    pass

if __name__ == "__main__":
    main()
