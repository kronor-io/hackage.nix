{
  "1.0" = {
    sha256 = "35d999caf54215b16cf0329e15157d885608c11f4a0fac82ced800481c88c358";
    revisions = {
      r0 = {
        nix = import ../hackage/universe-instances-trans-1.0-r0-dc08d6e14b32b2a2bdb694b6f98ee0324787e7202eaf267d74b933c5357cd2e6.nix;
        revNum = 0;
        revTimestamp = "2014-04-18T03:23:40Z";
        sha256 = "dc08d6e14b32b2a2bdb694b6f98ee0324787e7202eaf267d74b933c5357cd2e6";
      };
      default = "r0";
    };
  };
  "1.0.0.1" = {
    sha256 = "0d047cf1eb4af9f2052f44f487e7d2d44c86f51b54a3cc1fc5243ad816e8310e";
    revisions = {
      r0 = {
        nix = import ../hackage/universe-instances-trans-1.0.0.1-r0-9f75eb7f8cda98e8ecb5e9f6ec079890a66265bdfd6707f4fa4cb8857327dfa4.nix;
        revNum = 0;
        revTimestamp = "2014-05-25T02:52:36Z";
        sha256 = "9f75eb7f8cda98e8ecb5e9f6ec079890a66265bdfd6707f4fa4cb8857327dfa4";
      };
      r1 = {
        nix = import ../hackage/universe-instances-trans-1.0.0.1-r1-c96cbeb4bf0240bbe09476ca360e9d35cb07cb0af4324bfbfa5cce55df7a9c35.nix;
        revNum = 1;
        revTimestamp = "2016-01-18T06:27:58Z";
        sha256 = "c96cbeb4bf0240bbe09476ca360e9d35cb07cb0af4324bfbfa5cce55df7a9c35";
      };
      default = "r1";
    };
  };
  "1.1" = {
    sha256 = "c6aef59a7c5387c7b19efaa4f0af4d3543c9fa37f14d3789c4b5bc60563ee336";
    revisions = {
      r0 = {
        nix = import ../hackage/universe-instances-trans-1.1-r0-5b364991107d11baddd505721622a4c9f39cff1e1d0d296c50171d629ec35fbe.nix;
        revNum = 0;
        revTimestamp = "2019-04-15T18:13:29Z";
        sha256 = "5b364991107d11baddd505721622a4c9f39cff1e1d0d296c50171d629ec35fbe";
      };
      r1 = {
        nix = import ../hackage/universe-instances-trans-1.1-r1-0266d90ffe3736c655c069c9f3d26897410b07ee86b4dedf79cf7057d163d85f.nix;
        revNum = 1;
        revTimestamp = "2019-06-29T17:30:48Z";
        sha256 = "0266d90ffe3736c655c069c9f3d26897410b07ee86b4dedf79cf7057d163d85f";
      };
      r2 = {
        nix = import ../hackage/universe-instances-trans-1.1-r2-97fcf8147e77a3d105bee8fc05bc94fed6deb92f7d8c9cf1669fe098a763d03b.nix;
        revNum = 2;
        revTimestamp = "2021-01-09T19:41:26Z";
        sha256 = "97fcf8147e77a3d105bee8fc05bc94fed6deb92f7d8c9cf1669fe098a763d03b";
      };
      default = "r2";
    };
  };
}