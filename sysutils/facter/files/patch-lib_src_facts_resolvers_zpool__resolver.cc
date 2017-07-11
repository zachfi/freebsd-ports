--- lib/src/facts/resolvers/zpool_resolver.cc.orig	2017-06-27 17:42:22 UTC
+++ lib/src/facts/resolvers/zpool_resolver.cc
@@ -41,7 +41,7 @@ namespace facter { namespace facts { nam
 
         // Get the zpool version and features
         static boost::regex zpool_version("ZFS pool version (\\d+)[.]");
-        static boost::regex zpool_feature("\\s*(\\d+)[ ]");
+        static boost::regex zpool_feature("^\\s*(\\d+)[ ]");
         each_line(zpool_command(), {"upgrade", "-v"}, [&] (string& line) {
             if (re_search(line, zpool_version, &result.version)) {
                 return true;
@@ -52,6 +52,9 @@ namespace facter { namespace facts { nam
             }
             return true;
         });
+        if (result.version == "" && !result.features.empty()) {
+            result.version = result.features.back();
+        }
         return result;
     }
 
