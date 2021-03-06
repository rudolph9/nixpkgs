{ lib, buildPythonPackage, fetchPypi, Babel, celery, importlib-metadata, pytz, tornado, mock }:

buildPythonPackage rec {
  pname = "flower";
  version = "0.9.4";
  
  src = fetchPypi {
    inherit pname version;
    sha256 = "25782840f7ffc25dcf478d94535a2d815448de4aa6c71426be6abfa9ca417448";
  };

  propagatedBuildInputs = [ Babel celery importlib-metadata pytz tornado ];
  
  checkInputs = [ mock ];
  
  meta = with lib; {
    description = "Celery Flower";
    homepage = "https://github.com/mher/flower";
    license = licenses.bsdOriginal;    
    maintainers = [ maintainers.arnoldfarkas ];
  };
}
