--- lib/puppet.rb.orig	2017-02-04 20:55:19.503801289 -0800
+++ lib/puppet.rb	2017-02-04 20:58:54.650300411 -0800
@@ -53,6 +53,7 @@
 
   class << self
     if Puppet::GETTEXT_AVAILABLE
+      freebsd_locale_path = '%%ETCDIR%%/share/locales'
       # e.g. ~/code/puppet/locales. Also when running as a gem.
       local_locale_path = File.absolute_path('../locales', File.dirname(__FILE__))
       # e.g. /opt/puppetlabs/puppet/share/locale
@@ -60,7 +61,9 @@
       # e.g. C:\Program Files\Puppet Labs\Puppet\puppet\share\locale
       win32_system_locale_path = File.absolute_path('../../../../../puppet/share/locale', File.dirname(__FILE__))
 
-      if File.exist?(local_locale_path)
+      if File.exist?(freebsd_locale_path)
+        locale_path = freebsd_locale_path
+      elsif File.exist?(local_locale_path)
         locale_path = local_locale_path
       elsif File.exist?(win32_system_locale_path)
         locale_path = win32_system_locale_path
