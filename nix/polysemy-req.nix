{
  "0.1.0" = {
    sha256 = "d52e5e32a8c523367f0937ab330094dd9b25071c1332445503569d09930951ee";
    revisions = {
      r0 = {
        nix = import ../hackage/polysemy-req-0.1.0-r0-b01e0611423a176418fe9cce4d4073aa8989b9178eecab6a03eb4d0fa8568f80.nix;
        revNum = 0;
        revTimestamp = "2021-06-27T16:48:16Z";
        sha256 = "b01e0611423a176418fe9cce4d4073aa8989b9178eecab6a03eb4d0fa8568f80";
      };
      r1 = {
        nix = import ../hackage/polysemy-req-0.1.0-r1-461fbef58f8fad46e125c5fa97fe969ed7f104a33f0952b8561ce5a2abfcc5be.nix;
        revNum = 1;
        revTimestamp = "2022-05-31T18:35:19Z";
        sha256 = "461fbef58f8fad46e125c5fa97fe969ed7f104a33f0952b8561ce5a2abfcc5be";
      };
      default = "r1";
    };
  };
}