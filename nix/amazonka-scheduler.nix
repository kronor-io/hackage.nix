{
  "2.0" = {
    sha256 = "6fb89dd82c28ff9deb5791f58f37bbb8a971e0ebb7ee023606ae9120fc233e49";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-scheduler-2.0-r0-64c7c40dbedd21d2fdfb271a52e7a86fe9cb407a00c8252c4c965b8629e2b669.nix;
        revNum = 0;
        revTimestamp = "2023-07-27T21:46:31Z";
        sha256 = "64c7c40dbedd21d2fdfb271a52e7a86fe9cb407a00c8252c4c965b8629e2b669";
        };
      r1 = {
        nix = import ../hackage/amazonka-scheduler-2.0-r1-10db1eef995561c6b0e65abef4fa88cc3e01695d6a7aa3dcf89ec9c9aea0e0ac.nix;
        revNum = 1;
        revTimestamp = "2024-05-13T07:53:35Z";
        sha256 = "10db1eef995561c6b0e65abef4fa88cc3e01695d6a7aa3dcf89ec9c9aea0e0ac";
        };
      default = "r1";
      };
    };
  }