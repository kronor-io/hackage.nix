{
  "0.1" = {
    sha256 = "a791d713e2851b543a4b5c07ecedcfd2e3f1b76d984ae347df854e3c887246ec";
    revisions = {
      r0 = {
        nix = import ../hackage/xkcd-0.1-r0-6eab34e56a5f4d2ae0ea380c3888be4c4c11bdee99c973ff3a6f4a2ba519ab46.nix;
        revNum = 0;
        revTimestamp = "2012-05-22T13:34:48Z";
        sha256 = "6eab34e56a5f4d2ae0ea380c3888be4c4c11bdee99c973ff3a6f4a2ba519ab46";
      };
      r1 = {
        nix = import ../hackage/xkcd-0.1-r1-8c53afe9eceffcab8ffc31b2b82fab9cc2c1c0c89e416cce10efaac8e5673ec9.nix;
        revNum = 1;
        revTimestamp = "2019-05-03T22:01:39Z";
        sha256 = "8c53afe9eceffcab8ffc31b2b82fab9cc2c1c0c89e416cce10efaac8e5673ec9";
      };
      default = "r1";
    };
  };
  "0.1.1" = {
    sha256 = "49a8a7d2ef2c174abbcf159e7563d0942102d349777428bbbda2d43ef3e9fc97";
    revisions = {
      r0 = {
        nix = import ../hackage/xkcd-0.1.1-r0-6d15997bdd3fd191d7dc79c590e59e975d4c54a3b04c91b4093b9e0f622ef241.nix;
        revNum = 0;
        revTimestamp = "2012-08-05T12:46:25Z";
        sha256 = "6d15997bdd3fd191d7dc79c590e59e975d4c54a3b04c91b4093b9e0f622ef241";
      };
      r1 = {
        nix = import ../hackage/xkcd-0.1.1-r1-558c3e1f981c92e2940ac3ea130c67268bf56d980762da6d5ab5ccc72b34c66b.nix;
        revNum = 1;
        revTimestamp = "2019-05-03T22:01:41Z";
        sha256 = "558c3e1f981c92e2940ac3ea130c67268bf56d980762da6d5ab5ccc72b34c66b";
      };
      default = "r1";
    };
  };
}