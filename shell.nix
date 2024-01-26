{ pkgs ? import <nixpkgs> {} 
}:

pkgs.mkShell {
  name="kivy-dev";
  buildInputs = with pkgs; [
    	pipenv
	vscodium
	qt5.qtwebengine
	python311
    	python311Packages.pywebview
	python311Packages.virtualenv
	python311Packages.cython
	python311Packages.tkinter
	python311Packages.kivy
	python311Packages.openpyxl
	python311Packages.pyautogui
	python311Packages.beautifulsoup4
	python311Packages.requests
	python311Packages.numpy
	python311Packages.tensorflow
	python311Packages.keras
	python311Packages.matplotlib
	python311Packages.pandas
	python311Packages.jupyterlab
	python311Packages.opencv4
	python311Packages.seaborn
	python311Packages.tqdm
	python311Packages.sklearn-deap
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
