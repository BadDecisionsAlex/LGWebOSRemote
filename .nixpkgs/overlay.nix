
self: super:
{
  #self.python37Packages.lg-webos-remote = self.callPackage ./. {
  #  buildPython = super.python37Packages.buildPythonPackage;
  #  wakeonlan = super.python37Packages.wakeonlan;
  #  ws4py = super.python37Packages.ws4py;
  #};

  lg-webos-remote = self.callPackage ./. {
    buildPython = super.python37Packages.buildPythonApplication;
    wakeonlan = super.python37Packages.wakeonlan;
    ws4py = super.python37Packages.ws4py;
  };
}
