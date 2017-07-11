--- lib/src/facts/resolvers/zfs_resolver.cc.orig	2017-06-27 17:42:22 UTC
+++ lib/src/facts/resolvers/zfs_resolver.cc
@@ -49,7 +49,7 @@ namespace facter { namespace facts { nam
         });
 
         // Get the ZFS features
-        static boost::regex zfs_feature("\\s*(\\d+)[ ]");
+        static boost::regex zfs_feature("^\\s*(\\d+)[ ]");
         each_line(zfs_command(), {"upgrade", "-v"}, [&] (string& line) {
             string feature;
             if (re_search(line, zfs_feature, &feature)) {
