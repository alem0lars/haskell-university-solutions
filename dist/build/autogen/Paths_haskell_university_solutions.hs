{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_haskell_university_solutions (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/alem0lars/.cabal/bin"
libdir     = "/home/alem0lars/.cabal/lib/x86_64-linux-ghc-8.0.2/haskell-university-solutions-0.1.0.0-JtBSdcMDlcI95PrKqmTfaC"
dynlibdir  = "/home/alem0lars/.cabal/lib/x86_64-linux-ghc-8.0.2"
datadir    = "/home/alem0lars/.cabal/share/x86_64-linux-ghc-8.0.2/haskell-university-solutions-0.1.0.0"
libexecdir = "/home/alem0lars/.cabal/libexec"
sysconfdir = "/home/alem0lars/.cabal/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "haskell_university_solutions_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "haskell_university_solutions_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "haskell_university_solutions_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "haskell_university_solutions_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "haskell_university_solutions_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "haskell_university_solutions_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
