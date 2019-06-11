{ lib
, fetchurl
, buildPython
, wakeonlan, ws4py
}:
buildPython rec {

  pname = "lg-webos-remote";
  version = "0.1.2";

  src = fetchurl {
    url = "https://github.com/klattimer/LGWebOSRemote/archive/0.1.2.tar.gz";
    sha256 = "0rwl6q74q337c75qc8r2br0rjml77ri8dbjxzxvy6gnriyx2d6pk";
  };

  buildInputs = [
    wakeonlan
    ws4py
  ];

  doCheck = false;

  meta = with lib; {
    homepage = "http://github.com/klattimer/LGWebOSRemote";
    license = licenses.mit;
    description = "Command line webOS remote for LGTVs";
  };

}
