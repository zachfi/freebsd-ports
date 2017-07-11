
$FreeBSD$

--- lib/puppet/provider/package/pkgng.rb.orig
+++ lib/puppet/provider/package/pkgng.rb
@@ -17,7 +17,7 @@
   end
 
   def self.get_version_list
-    pkg(['version', '-voRL='])
+    pkg(['version', '-voL='])
   end
 
   def self.get_latest_version(origin, version_list)
