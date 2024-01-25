{ pkgs ? import <nixpkgs> {} 
}:

pkgs.mkShell {
  name="kivy-dev";
  buildInputs = [
    pkgs.pipenv
	pkgs.vscodium
	pkgs.python311
    pkgs.python311Packages.pywebview
	pkgs.qt5.qtwebengine
	pkgs.python311Packages.virtualenv
	pkgs.python311Packages.cython
	pkgs.python311Packages.tkinter
	pkgs.python311Packages.kivy
	pkgs.python311Packages.openpyxl
	pkgs.python311Packages.pyautogui
	pkgs.python311Packages.beautifulsoup4
	pkgs.python311Packages.requests
	pkgs.python311Packages.numpy
	pkgs.python311Packages.tensorflow
	pkgs.python311Packages.keras
	pkgs.python311Packages.matplotlib
	pkgs.python311Packages.pandas
	pkgs.python311Packages.jupyterlab
	pkgs.python311Packages.opencv4
	pkgs.python311Packages.seaborn
	pkgs.python311Packages.tqdm
	pkgs.python311Packages.sklearn-deap
  ];
  
  shellHook = ''
  	echo "Start dev shell.nix"
  	pipenv install pyinstaller
  	codium .
		pipenv run jupyter-lab
#  	python3 AllInOne.py
#   python3 main.py
  '';
}
