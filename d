[33mcommit e614cea58d7fc192f107df59c66ccb6e2a826978[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m)[m
Author: TheeNinja <theeninja.development@gmail.com>
Date:   Sun Jul 21 00:26:10 2019 -0700

    First commit.

[1mdiff --git a/build.gradle b/build.gradle[m
[1mnew file mode 100644[m
[1mindex 0000000..4df8fe7[m
[1m--- /dev/null[m
[1m+++ b/build.gradle[m
[36m@@ -0,0 +1,33 @@[m
[32m+[m[32mplugins {[m
[32m+[m[32m    id 'java'[m
[32m+[m[32m    id 'com.gradle.build-scan' version '2.0.2'[m
[32m+[m[32m    id 'org.springframework.boot' version '2.0.5.RELEASE'[m
[32m+[m[32m    id 'io.spring.dependency-management' version '1.0.7.RELEASE'[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mgroup = 'org.cargo'[m
[32m+[m[32mversion = '1.0-SNAPSHOT'[m
[32m+[m
[32m+[m[32msourceCompatibility = 11[m
[32m+[m[32mtargetCompatibility = 11[m
[32m+[m
[32m+[m[32mrepositories {[m
[32m+[m[32m    jcenter()[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mdependencies {[m
[32m+[m[32m    implementation('org.springframework.boot:spring-boot-starter-web')[m
[32m+[m[32m    implementation('org.springframework.boot:spring-boot-starter-data-jpa')[m
[32m+[m[32m    implementation('org.springframework.security:spring-security-core')[m
[32m+[m[32m    implementation('org.springframework:spring-context-support')[m
[32m+[m
[32m+[m[32m    implementation group: 'com.smartcar.sdk', name: 'java-sdk', version:'2.1.0'[m
[32m+[m[32m    implementation group: 'javax.mail', name: 'mail', version:'1.5.0-b01'[m
[32m+[m[32m    runtime group: 'mysql', name: 'mysql-connector-java', version:'8.0.16'[m
[32m+[m
[32m+[m[32m    compileOnly group: 'org.projectlombok', name: 'lombok', version:'1.18.8'[m
[32m+[m[32m    annotationProcessor group: 'org.projectlombok', name: 'lombok', version:'1.18.8'[m
[32m+[m
[32m+[m[32m    implementation 'javax.xml.bind:jaxb-api:2.3.0'[m
[32m+[m[32m    implementation 'org.javassist:javassist:3.23.1-GA'[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/gradle/wrapper/gradle-wrapper.jar b/gradle/wrapper/gradle-wrapper.jar[m
[1mnew file mode 100644[m
[1mindex 0000000..9ab0a83[m
Binary files /dev/null and b/gradle/wrapper/gradle-wrapper.jar differ
[1mdiff --git a/gradle/wrapper/gradle-wrapper.properties b/gradle/wrapper/gradle-wrapper.properties[m
[1mnew file mode 100644[m
[1mindex 0000000..ebe8759[m
[1m--- /dev/null[m
[1m+++ b/gradle/wrapper/gradle-wrapper.properties[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32m#Sat Jul 20 21:29:49 PDT 2019[m
[32m+[m[32mdistributionBase=GRADLE_USER_HOME[m
[32m+[m[32mdistributionPath=wrapper/dists[m
[32m+[m[32mzipStoreBase=GRADLE_USER_HOME[m
[32m+[m[32mzipStorePath=wrapper/dists[m
[32m+[m[32mdistributionUrl=https\://services.gradle.org/distributions/gradle-5.5.1-all.zip[m
[1mdiff --git a/gradlew b/gradlew[m
[1mnew file mode 100755[m
[1mindex 0000000..cccdd3d[m
[1m--- /dev/null[m
[1m+++ b/gradlew[m
[36m@@ -0,0 +1,172 @@[m
[32m+[m[32m#!/usr/bin/env sh[m
[32m+[m
[32m+[m[32m##############################################################################[m
[32m+[m[32m##[m
[32m+[m[32m##  Gradle start up script for UN*X[m
[32m+[m[32m##[m
[32m+[m[32m##############################################################################[m
[32m+[m
[32m+[m[32m# Attempt to set APP_HOME[m
[32m+[m[32m# Resolve links: $0 may be a link[m
[32m+[m[32mPRG="$0"[m
[32m+[m[32m# Need this for relative symlinks.[m
[32m+[m[32mwhile [ -h "$PRG" ] ; do[m
[32m+[m[32m    ls=`ls -ld "$PRG"`[m
[32m+[m[32m    link=`expr "$ls" : '.*-> \(.*\)$'`[m
[32m+[m[32m    if expr "$link" : '/.*' > /dev/null; then[m
[32m+[m[32m        PRG="$link"[m
[32m+[m[32m    else[m
[32m+[m[32m        PRG=`dirname "$PRG"`"/$link"[m
[32m+[m[32m    fi[m
[32m+[m[32mdone[m
[32m+[m[32mSAVED="`pwd`"[m
[32m+[m[32mcd "`dirname \"$PRG\"`/" >/dev/null[m
[32m+[m[32mAPP_HOME="`pwd -P`"[m
[32m+[m[32mcd "$SAVED" >/dev/null[m
[32m+[m
[32m+[m[32mAPP_NAME="Gradle"[m
[32m+[m[32mAPP_BASE_NAME=`basename "$0"`[m
[32m+[m
[32m+[m[32m# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.[m
[32m+[m[32mDEFAULT_JVM_OPTS=""[m
[32m+[m
[32m+[m[32m# Use the maximum available, or set MAX_FD != -1 to use that value.[m
[32m+[m[32mMAX_FD="maximum"[m
[32m+[m
[32m+[m[32mwarn () {[m
[32m+[m[32m    echo "$*"[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mdie () {[m
[32m+[m[32m    echo[m
[32m+[m[32m    echo "$*"[m
[32m+[m[32m    echo[m
[32m+[m[32m    exit 1[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m# OS specific support (must be 'true' or 'false').[m
[32m+[m[32mcygwin=false[m
[32m+[m[32mmsys=false[m
[32m+[m[32mdarwin=false[m
[32m+[m[32mnonstop=false[m
[32m+[m[32mcase "`uname`" in[m
[32m+[m[32m  CYGWIN* )[m
[32m+[m[32m    cygwin=true[m
[32m+[m[32m    ;;[m
[32m+[m[32m  Darwin* )[m
[32m+[m[32m    darwin=true[m
[32m+[m[32m    ;;[m
[32m+[m[32m  MINGW* )[m
[32m+[m[32m    msys=true[m
[32m+[m[32m    ;;[m
[32m+[m[32m  NONSTOP* )[m
[32m+[m[32m    nonstop=true[m
[32m+[m[32m    ;;[m
[32m+[m[32mesac[m
[32m+[m
[32m+[m[32mCLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar[m
[32m+[m
[32m+[m[32m# Determine the Java command to use to start the JVM.[m
[32m+[m[32mif [ -n "$JAVA_HOME" ] ; then[m
[32m+[m[32m    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then[m
[32m+[m[32m        # IBM's JDK on AIX uses strange locations for the executables[m
[32m+[m[32m        JAVACMD="$JAVA_HOME/jre/sh/java"[m
[32m+[m[32m    else[m
[32m+[m[32m        JAVACMD="$JAVA_HOME/bin/java"[m
[32m+[m[32m    fi[m
[32m+[m[32m    if [ ! -x "$JAVACMD" ] ; then[m
[32m+[m[32m        die "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME[m
[32m+[m
[32m+[m[32mPlease set the JAVA_HOME variable in your environment to match the[m
[32m+[m[32mlocation of your Java installation."[m
[32m+[m[32m    fi[m
[32m+[m[32melse[m
[32m+[m[32m    JAVACMD="java"[m
[32m+[m[32m    which java >/dev/null 2>&1 || die "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.[m
[32m+[m
[32m+[m[32mPlease set the JAVA_HOME variable in your environment to match the[m
[32m+[m[32mlocation of your Java installation."[m
[32m+[m[32mfi[m
[32m+[m
[32m+[m[32m# Increase the maximum file descriptors if we can.[m
[32m+[m[32mif [ "$cygwin" = "false" -a "$darwin" = "false" -a "$nonstop" = "false" ] ; then[m
[32m+[m[32m    MAX_FD_LIMIT=`ulimit -H -n`[m
[32m+[m[32m    if [ $? -eq 0 ] ; then[m
[32m+[m[32m        if [ "$MAX_FD" = "maximum" -o "$MAX_FD" = "max" ] ; then[m
[32m+[m[32m            MAX_FD="$MAX_FD_LIMIT"[m
[32m+[m[32m        fi[m
[32m+[m[32m        ulimit -n $MAX_FD[m
[32m+[m[32m        if [ $? -ne 0 ] ; then[m
[32m+[m[32m            warn "Could not set maximum file descriptor limit: $MAX_FD"[m
[32m+[m[32m        fi[m
[32m+[m[32m    else[m
[32m+[m[32m        warn "Could not query maximum file descriptor limit: $MAX_FD_LIMIT"[m
[32m+[m[32m    fi[m
[32m+[m[32mfi[m
[32m+[m
[32m+[m[32m# For Darwin, add options to specify how the application appears in the dock[m
[32m+[m[32mif $darwin; then[m
[32m+[m[32m    GRADLE_OPTS="$GRADLE_OPTS \"-Xdock:name=$APP_NAME\" \"-Xdock:icon=$APP_HOME/media/gradle.icns\""[m
[32m+[m[32mfi[m
[32m+[m
[32m+[m[32m# For Cygwin, switch paths to Windows format before running java[m
[32m+[m[32mif $cygwin ; then[m
[32m+[m[32m    APP_HOME=`cygpath --path --mixed "$APP_HOME"`[m
[32m+[m[32m    CLASSPATH=`cygpath --path --mixed "$CLASSPATH"`[m
[32m+[m[32m    JAVACMD=`cygpath --unix "$JAVACMD"`[m
[32m+[m
[32m+[m[32m    # We build the pattern for arguments to be converted via cygpath[m
[32m+[m[32m    ROOTDIRSRAW=`find -L / -maxdepth 1 -mindepth 1 -type d 2>/dev/null`[m
[32m+[m[32m    SEP=""[m
[32m+[m[32m    for dir in $ROOTDIRSRAW ; do[m
[32m+[m[32m        ROOTDIRS="$ROOTDIRS$SEP$dir"[m
[32m+[m[32m        SEP="|"[m
[32m+[m[32m    done[m
[32m+[m[32m    OURCYGPATTERN="(^($ROOTDIRS))"[m
[32m+[m[32m    # Add a user-defined pattern to the cygpath arguments[m
[32m+[m[32m    if [ "$GRADLE_CYGPATTERN" != "" ] ; then[m
[32m+[m[32m        OURCYGPATTERN="$OURCYGPATTERN|($GRADLE_CYGPATTERN)"[m
[32m+[m[32m    fi[m
[32m+[m[32m    # Now convert the arguments - kludge to limit ourselves to /bin/sh[m
[32m+[m[32m    i=0[m
[32m+[m[32m    for arg in "$@" ; do[m
[32m+[m[32m        CHECK=`echo "$arg"|egrep -c "$OURCYGPATTERN" -`[m
[32m+[m[32m        CHECK2=`echo "$arg"|egrep -c "^-"`                                 ### Determine if an option[m
[32m+[m
[32m+[m[32m        if [ $CHECK -ne 0 ] && [ $CHECK2 -eq 0 ] ; then                    ### Added a condition[m
[32m+[m[32m            eval `echo args$i`=`cygpath --path --ignore --mixed "$arg"`[m
[32m+[m[32m        else[m
[32m+[m[32m            eval `echo args$i`="\"$arg\""[m
[32m+[m[32m        fi[m
[32m+[m[32m        i=$((i+1))[m
[32m+[m[32m    done[m
[32m+[m[32m    case $i in[m
[32m+[m[32m        (0) set -- ;;[m
[32m+[m[32m        (1) set -- "$args0" ;;[m
[32m+[m[32m        (2) set -- "$args0" "$args1" ;;[m
[32m+[m[32m        (3) set -- "$args0" "$args1" "$args2" ;;[m
[32m+[m[32m        (4) set -- "$args0" "$args1" "$args2" "$args3" ;;[m
[32m+[m[32m        (5) set -- "$args0" "$args1" "$args2" "$args3" "$args4" ;;[m
[32m+[m[32m        (6) set -- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" ;;[m
[32m+[m[32m        (7) set -- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" "$args6" ;;[m
[32m+[m[32m        (8) set -- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" "$args6" "$args7" ;;[m
[32m+[m[32m        (9) set -- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" "$args6" "$args7" "$args8" ;;[m
[32m+[m[32m    esac[m
[32m+[m[32mfi[m
[32m+[m
[32m+[m[32m# Escape application args[m
[32m+[m[32msave () {[m
[32m+[m[32m    for i do printf %s\\n "$i" | sed "s/'/'\\\\''/g;1s/^/'/;\$s/\$/' \\\\/" ; done[m
[32m+[m[32m    echo " "[m
[32m+[m[32m}[m
[32m+[m[32mAPP_ARGS=$(save "$@")[m
[32m+[m
[32m+[m[32m# Collect all arguments for the java command, following the shell quoting and substitution rules[m
[32m+[m[32meval set -- $DEFAULT_JVM_OPTS $JAVA_OPTS $GRADLE_OPTS "\"-Dorg.gradle.appname=$APP_BASE_NAME\"" -classpath "\"$CLASSPATH\"" org.gradle.wrapper.GradleWrapperMain "$APP_ARGS"[m
[32m+[m
[32m+[m[32m# by default we should be in the correct project dir, but when run from Finder on Mac, the cwd is wrong[m
[32m+[m[32mif [ "$(uname)" = "Darwin" ] && [ "$HOME" = "$PWD" ]; then[m
[32m+[m[32m  cd "$(dirname "$0")"[m
[32m+[m[32mfi[m
[32m+[m
[32m+[m[32mexec "$JAVACMD" "$@"[m
[1mdiff --git a/gradlew.bat b/gradlew.bat[m
[1mnew file mode 100644[m
[1mindex 0000000..f955316[m
[1m--- /dev/null[m
[1m+++ b/gradlew.bat[m
[36m@@ -0,0 +1,84 @@[m
[32m+[m[32m@if "%DEBUG%" == "" @echo off[m
[32m+[m[32m@rem ##########################################################################[m
[32m+[m[32m@rem[m
[32m+[m[32m@rem  Gradle startup script for Windows[m
[32m+[m[32m@rem[m
[32m+[m[32m@rem ##########################################################################[m
[32m+[m
[32m+[m[32m@rem Set local scope for the variables with windows NT shell[m
[32m+[m[32mif "%OS%"=="Windows_NT" setlocal[m
[32m+[m
[32m+[m[32mset DIRNAME=%~dp0[m
[32m+[m[32mif "%DIRNAME%" == "" set DIRNAME=.[m
[32m+[m[32mset APP_BASE_NAME=%~n0[m
[32m+[m[32mset APP_HOME=%DIRNAME%[m
[32m+[m
[32m+[m[32m@rem Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.[m
[32m+[m[32mset DEFAULT_JVM_OPTS=[m
[32m+[m
[32m+[m[32m@rem Find java.exe[m
[32m+[m[32mif defined JAVA_HOME goto findJavaFromJavaHome[m
[32m+[m
[32m+[m[32mset JAVA_EXE=java.exe[m
[32m+[m[32m%JAVA_EXE% -version >NUL 2>&1[m
[32m+[m[32mif "%ERRORLEVEL%" == "0" goto init[m
[32m+[m
[32m+[m[32mecho.[m
[32m+[m[32mecho ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.[m
[32m+[m[32mecho.[m
[32m+[m[32mecho Please set the JAVA_HOME variable in your environment to match the[m
[32m+[m[32mecho location of your Java installation.[m
[32m+[m
[32m+[m[32mgoto fail[m
[32m+[m
[32m+[m[32m:findJavaFromJavaHome[m
[32m+[m[32mset JAVA_HOME=%JAVA_HOME:"=%[m
[32m+[m[32mset JAVA_EXE=%JAVA_HOME%/bin/java.exe[m
[32m+[m
[32m+[m[32mif exist "%JAVA_EXE%" goto init[m
[32m+[m
[32m+[m[32mecho.[m
[32m+[m[32mecho ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%[m
[32m+[m[32mecho.[m
[32m+[m[32mecho Please set the JAVA_HOME variable in your environment to match the[m
[32m+[m[32mecho location of your Java installation.[m
[32m+[m
[32m+[m[32mgoto fail[m
[32m+[m
[32m+[m[32m:init[m
[32m+[m[32m@rem Get command-line arguments, handling Windows variants[m
[32m+[m
[32m+[m[32mif not "%OS%" == "Windows_NT" goto win9xME_args[m
[32m+[m
[32m+[m[32m:win9xME_args[m
[32m+[m[32m@rem Slurp the command line arguments.[m
[32m+[m[32mset CMD_LINE_ARGS=[m
[32m+[m[32mset _SKIP=2[m
[32m+[m
[32m+[m[32m:win9xME_args_slurp[m
[32m+[m[32mif "x%~1" == "x" goto execute[m
[32m+[m
[32m+[m[32mset CMD_LINE_ARGS=%*[m
[32m+[m
[32m+[m[32m:execute[m
[32m+[m[32m@rem Setup the command line[m
[32m+[m
[32m+[m[32mset CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar[m
[32m+[m
[32m+[m[32m@rem Execute Gradle[m
[32m+[m[32m"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLE_OPTS% "-Dorg.gradle.appname=%APP_BASE_NAME%" -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %CMD_LINE_ARGS%[m
[32m+[m
[32m+[m[32m:end[m
[32m+[m[32m@rem End local scope for the variables with windows NT shell[m
[32m+[m[32mif "%ERRORLEVEL%"=="0" goto mainEnd[m
[32m+[m
[32m+[m[32m:fail[m
[32m+[m[32mrem Set variable GRADLE_EXIT_CONSOLE if you need the _script_ return code instead of[m
[32m+[m[32mrem the _cmd.exe /c_ return code![m
[32m+[m[32mif  not "" == "%GRADLE_EXIT_CONSOLE%" exit 1[m
[32m+[m[32mexit /b 1[m
[32m+[m
[32m+[m[32m:mainEnd[m
[32m+[m[32mif "%OS%"=="Windows_NT" endlocal[m
[32m+[m
[32m+[m[32m:omega[m
[1mdiff --git a/settings.gradle b/settings.gradle[m
[1mnew file mode 100644[m
[1mindex 0000000..a02fc9f[m
[1m--- /dev/null[m
[1m+++ b/settings.gradle[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32mrootProject.name = 'CarGO'[m
[1mdiff --git a/src/main/java/me/theeninja/cargo/CarGO.java b/src/main/java/me/theeninja/cargo/CarGO.java[m
[1mnew file mode 100644[m
[1mindex 0000000..0362c52[m
[1m--- /dev/null[m
[1m+++ b/src/main/java/me/theeninja/cargo/CarGO.java[m
[36m@@ -0,0 +1,37 @@[m
[32m+[m[32mpackage me.theeninja.cargo;[m
[32m+[m
[32m+[m[32mimport lombok.val;[m
[32m+[m[32mimport org.springframework.boot.SpringApplication;[m
[32m+[m[32mimport org.springframework.boot.autoconfigure.EnableAutoConfiguration;[m
[32m+[m[32mimport org.springframework.boot.autoconfigure.SpringBootApplication;[m
[32m+[m[32mimport org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;[m
[32m+[m[32mimport org.springframework.context.annotation.Bean;[m
[32m+[m[32mimport org.springframework.mail.javamail.JavaMailSender;[m
[32m+[m[32mimport org.springframework.mail.javamail.JavaMailSenderImpl;[m
[32m+[m
[32m+[m[32mimport java.util.Properties;[m
[32m+[m
[32m+[m[32m@SpringBootApplication[m
[32m+[m[32mpublic class CarGO {[m
[32m+[m[32m    public static void main(final String[] args) {[m
[32m+[m[32m        SpringApplication.run(CarGO.class, args);[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    @Bean[m
[32m+[m[32m    public JavaMailSender getJavaMailSender() {[m
[32m+[m[32m        val mailSender = new JavaMailSenderImpl();[m
[32m+[m[32m        mailSender.setHost("smtp.gmail.com");[m
[32m+[m[32m        mailSender.setPort(587);[m
[32m+[m
[32m+[m[32m        mailSender.setUsername("marshac.official@gmail.com");[m
[32m+[m[32m        mailSender.setPassword("moriMARSHACOFFICIAL1");[m
[32m+[m
[32m+[m[32m        val props = mailSender.getJavaMailProperties();[m
[32m+[m[32m        props.put("mail.transport.protocol", "smtp");[m
[32m+[m[32m        props.put("mail.smtp.auth", "true");[m
[32m+[m[32m        props.put("mail.smtp.starttls.enable", "true");[m
[32m+[m[32m        props.put("mail.debug", "true");[m
[32m+[m
[32m+[m[32m        return mailSender;[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/src/main/java/me/theeninja/cargo/CarRenterController.java b/src/main/java/me/theeninja/cargo/CarRenterController.java[m
[1mnew file mode 100644[m
[1mindex 0000000..7ebb4ec[m
[1m--- /dev/null[m
[1m+++ b/src/main/java/me/theeninja/cargo/CarRenterController.java[m
[36m@@ -0,0 +1,56 @@[m
[32m+[m[32mpackage me.theeninja.cargo;[m
[32m+[m
[32m+[m[32mimport com.smartcar.sdk.AuthClient;[m
[32m+[m[32mimport com.smartcar.sdk.SmartcarException;[m
[32m+[m[32mimport com.smartcar.sdk.Vehicle;[m
[32m+[m[32mimport lombok.val;[m
[32m+[m[32mimport org.springframework.web.bind.annotation.GetMapping;[m
[32m+[m[32mimport org.springframework.web.bind.annotation.RequestParam;[m
[32m+[m[32mimport org.springframework.web.bind.annotation.RestController;[m
[32m+[m
[32m+[m[32mimport java.util.Arrays;[m
[32m+[m[32mimport java.util.stream.Collectors;[m
[32m+[m
[32m+[m[32m@RestController[m
[32m+[m[32mpublic class CarRenterController {[m
[32m+[m[32m    private static final String clientId = "65b7acd2-6827-4876-b5e7-9710d93d312d";[m
[32m+[m[32m    private static final String clientSecret = "d9b36039-3532-45cb-ad97-26292f6426da";[m
[32m+[m[32m    private static final String redirectUri = "http://localhost:8000/exchange";[m
[32m+[m
[32m+[m[32m    private static final String[] GET_AVAILABLE_CARS_REQUIRED_PERMISSIONS = {[m
[32m+[m[32m        "required:read_vehicle_info",[m
[32m+[m[32m        "required:read_vin",[m
[32m+[m[32m        "required:control_security",[m
[32m+[m[32m        "required:read_location"[m
[32m+[m[32m    };[m
[32m+[m
[32m+[m[32m    private static final AuthClient AUTH_CLIENT = new AuthClient([m
[32m+[m[32m        clientId,[m
[32m+[m[32m        clientSecret,[m
[32m+[m[32m        redirectUri,[m
[32m+[m[32m        GET_AVAILABLE_CARS_REQUIRED_PERMISSIONS,[m
[32m+[m[32m        false[m
[32m+[m[32m    );[m
[32m+[m
[32m+[m
[32m+[m[32m    @GetMapping("/query-available-cars")[m
[32m+[m[32m    public String queryAvailableCars(final @RequestParam(name = "userLocation") Location userLocation, final @RequestParam(name = "radius") int radius) {[m
[32m+[m[32m        val authURL = AUTH_CLIENT.new AuthUrlBuilder().build();[m
[32m+[m
[32m+[m[32m        return "redirect:/get-available-cars";[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    @GetMapping("/get-available-cars")[m
[32m+[m[32m    public Iterable<Vehicle> getAvailableCars(final @RequestParam(name = "code") String code) throws SmartcarException {[m
[32m+[m[32m        val auth = AUTH_CLIENT.exchangeCode(code);[m
[32m+[m[32m        val accessToken = auth.getAccessToken();[m
[32m+[m
[32m+[m[32m        val vehicleIDsResponse = AuthClient.getVehicleIds(accessToken);[m
[32m+[m[32m        val vehicleIDsData = vehicleIDsResponse.getData();[m
[32m+[m[32m        val vehicleIDs = vehicleIDsData.getVehicleIds();[m
[32m+[m
[32m+[m[32m        return Arrays.stream(vehicleIDs)[m
[32m+[m[32m                     .map(vehicleID -> new Vehicle(vehicleID, accessToken))[m
[32m+[m[32m                     .collect(Collectors.toUnmodifiableList());[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/src/main/java/me/theeninja/cargo/CarRenterService.java b/src/main/java/me/theeninja/cargo/CarRenterService.java[m
[1mnew file mode 100644[m
[1mindex 0000000..2b054af[m
[1m--- /dev/null[m
[1m+++ b/src/main/java/me/theeninja/cargo/CarRenterService.java[m
[36m@@ -0,0 +1,4 @@[m
[32m+[m[32mpackage me.theeninja.cargo;[m
[32m+[m
[32m+[m[32mpublic class CarRenterService {[m
[32m+[m[32m}[m
[1mdiff --git a/src/main/java/me/theeninja/cargo/Location.java b/src/main/java/me/theeninja/cargo/Location.java[m
[1mnew file mode 100644[m
[1mindex 0000000..1b50e8a[m
[1m--- /dev/null[m
[1m+++ b/src/main/java/me/theeninja/cargo/Location.java[m
[36m@@ -0,0 +1,12 @@[m
[32m+[m[32mpackage me.theeninja.cargo;[m
[32m+[m
[32m+[m[32mimport lombok.AllArgsConstructor;[m
[32m+[m[32mimport lombok.Data;[m
[32m+[m[32mimport lombok.Getter;[m
[32m+[m
[32m+[m[32m@AllArgsConstructor[m
[32m+[m[32m@Data[m
[32m+[m[32mpublic class Location {[m
[32m+[m[32m    private double x;[m
[32m+[m[32m    private double y;[m
[32m+[m[32m}[m
[1mdiff --git a/src/main/java/me/theeninja/cargo/OnRegistrationCompleteEvent.java b/src/main/java/me/theeninja/cargo/OnRegistrationCompleteEvent.java[m
[1mnew file mode 100644[m
[1mindex 0000000..cf925c4[m
[1m--- /dev/null[m
[1m+++ b/src/main/java/me/theeninja/cargo/OnRegistrationCompleteEvent.java[m
[36m@@ -0,0 +1,19 @@[m
[32m+[m[32mpackage me.theeninja.cargo;[m
[32m+[m
[32m+[m[32mimport lombok.Getter;[m
[32m+[m[32mimport me.theeninja.cargo.account.Account;[m
[32m+[m[32mimport org.springframework.context.ApplicationEvent;[m
[32m+[m
[32m+[m[32m@Getter[m
[32m+[m[32mpublic class OnRegistrationCompleteEvent extends ApplicationEvent {[m
[32m+[m[32m    private final String appURL;[m
[32m+[m[32m    private final String locale;[m
[32m+[m[32m    private final Account account;[m
[32m+[m
[32m+[m[32m    public OnRegistrationCompleteEvent(Account account, String appURL, String locale) {[m
[32m+[m[32m        super(account);[m
[32m+[m[32m        this.appURL = appURL;[m
[32m+[m[32m        this.locale = locale;[m
[32m+[m[32m        this.account = account;[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/src/main/java/me/theeninja/cargo/OnRegistrationCompleteEventListener.java b/src/main/java/me/theeninja/cargo/OnRegistrationCompleteEventListener.java[m
[1mnew file mode 100644[m
[1mindex 0000000..0bfebbd[m
[1m--- /dev/null[m
[1m+++ b/src/main/java/me/theeninja/cargo/OnRegistrationCompleteEventListener.java[m
[36m@@ -0,0 +1,47 @@[m
[32m+[m[32mpackage me.theeninja.cargo;[m
[32m+[m
[32m+[m[32mimport lombok.Getter;[m
[32m+[m[32mimport lombok.val;[m
[32m+[m[32mimport me.theeninja.cargo.account.AccountService;[m
[32m+[m[32mimport org.springframework.beans.factory.annotation.Autowired;[m
[32m+[m[32mimport org.springframework.context.ApplicationListener;[m
[32m+[m[32mimport org.springframework.mail.SimpleMailMessage;[m
[32m+[m[32mimport org.springframework.mail.javamail.JavaMailSender;[m
[32m+[m[32mimport org.springframework.stereotype.Component;[m
[32m+[m
[32m+[m[32mimport java.util.UUID;[m
[32m+[m
[32m+[m[32m@Getter[m
[32m+[m[32m@Component[m
[32m+[m[32mpublic class OnRegistrationCompleteEventListener implements ApplicationListener<OnRegistrationCompleteEvent> {[m
[32m+[m[32m    private final AccountService accountService;[m
[32m+[m[32m    private final JavaMailSender javaMailSender;[m
[32m+[m
[32m+[m[32m    @Autowired[m
[32m+[m[32m    public OnRegistrationCompleteEventListener(AccountService accountService, JavaMailSender javaMailSender) {[m
[32m+[m[32m        this.accountService = accountService;[m
[32m+[m[32m        this.javaMailSender = javaMailSender;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    private static final String VERIFICATION_TOKEN_SUBJECT = "CarGO Registration Confirmation";[m
[32m+[m
[32m+[m[32m    @Override[m
[32m+[m[32m    public void onApplicationEvent(final OnRegistrationCompleteEvent onRegistrationCompleteEvent) {[m
[32m+[m[32m        val account = onRegistrationCompleteEvent.getAccount();[m
[32m+[m[32m        val verificationTokenString = UUID.randomUUID().toString();[m
[32m+[m
[32m+[m[32m        getAccountService().newVerificationToken(account, verificationTokenString);[m
[32m+[m
[32m+[m[32m        val configmrationURL = onRegistrationCompleteEvent.getAppURL() + "verify?token=" + verificationTokenString;[m
[32m+[m
[32m+[m[32m        val recipientEmailAddress = account.getEmailAddress();[m
[32m+[m
[32m+[m[32m        val recipientEmailMessage = new SimpleMailMessage();[m
[32m+[m
[32m+[m[32m        recipientEmailMessage.setTo(recipientEmailAddress);[m
[32m+[m[32m        recipientEmailMessage.setSubject(VERIFICATION_TOKEN_SUBJECT);[m
[32m+[m[32m        recipientEmailMessage.setText(configmrationURL);[m
[32m+[m
[32m+[m[32m        getJavaMailSender().send(recipientEmailMessage);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/src/main/java/me/theeninja/cargo/PhoneNumberExistsException.java b/src/main/java/me/theeninja/cargo/PhoneNumberExistsException.java[m
[1mnew file mode 100644[m
[1mindex 0000000..0e75932[m
[1m--- /dev/null[m
[1m+++ b/src/main/java/me/theeninja/cargo/PhoneNumberExistsException.java[m
[36m@@ -0,0 +1,9 @@[m
[32m+[m[32mpackage me.theeninja.cargo;[m
[32m+[m
[32m+[m[32mimport me.theeninja.cargo.account.AccountCredentialExistsException;[m
[32m+[m
[32m+[m[32mpublic class PhoneNumberExistsException extends AccountCredentialExistsException {[m
[32m+[m[32m    public PhoneNumberExistsException(String message) {[m
[32m+[m[32m        super(message);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/src/main/java/me/theeninja/cargo/SocialSecurityNumberExistsException.java b/src/main/java/me/theeninja/cargo/SocialSecurityNumberExistsException.java[m
[1mnew file mode 100644[m
[1mindex 0000000..a77e25e[m
[1m--- /dev/null[m
[1m+++ b/src/main/java/me/theeninja/cargo/SocialSecurityNumberExistsException.java[m
[36m@@ -0,0 +1,9 @@[m
[32m+[m[32mpackage me.theeninja.cargo;[m
[32m+[m
[32m+[m[32mimport me.theeninja.cargo.account.AccountCredentialExistsException;[m
[32m+[m
[32m+[m[32mpublic class SocialSecurityNumberExistsException extends AccountCredentialExistsException {[m
[32m+[m[32m    public SocialSecurityNumberExistsException(String message) {[m
[32m+[m[32m        super(message);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/src/main/java/me/theeninja/cargo/VerificationToken.java b/src/main/java/me/theeninja/cargo/VerificationToken.java[m
[1mnew file mode 100644[m
[1mindex 0000000..16e2c15[m
[1m--- /dev/null[m
[1m+++ b/src/main/java/me/theeninja/cargo/VerificationToken.java[m
[36m@@ -0,0 +1,25 @@[m
[32m+[m[32mpackage me.theeninja.cargo;[m
[32m+[m
[32m+[m[32mimport lombok.Data;[m
[32m+[m[32mimport me.theeninja.cargo.account.Account;[m
[32m+[m
[32m+[m[32mimport javax.persistence.*;[m
[32m+[m[32mimport java.time.Instant;[m
[32m+[m
[32m+[m[32m@Entity[m
[32m+[m[32m@Data[m
[32m+[m[32mpublic class VerificationToken {[m
[32m+[m[32m    private static final int EXPIRATION = 60 * 24;[m
[32m+[m
[32m+[m[32m    @Id[m
[32m+[m[32m    @GeneratedValue(strategy = GenerationType.AUTO)[m
[32m+[m[32m    private Long id;[m
[32m+[m
[32m+[m[32m    private String tokenString;[m
[32m+[m
[32m+[m[32m    @OneToOne(targetEntity = Account.class, fetch = FetchType.EAGER)[m
[32m+[m[32m    @JoinColumn(nullable = false, name = "user_id")[m
[32m+[m[32m    private Account account;[m
[32m+[m
[32m+[m[32m    private Instant verificationRequestInstant;[m
[32m+[m[32m}[m
[1mdiff --git a/src/main/java/me/theeninja/cargo/VerificationTokenNotFoundException.java b/src/main/java/me/theeninja/cargo/VerificationTokenNotFoundException.java[m
[1mnew file mode 100644[m
[1mindex 0000000..c8b2e1b[m
[1m--- /dev/null[m
[1m+++ b/src/main/java/me/theeninja/cargo/VerificationTokenNotFoundException.java[m
[36m@@ -0,0 +1,7 @@[m
[32m+[m[32mpackage me.theeninja.cargo;[m
[32m+[m
[32m+[m[32mpublic class VerificationTokenNotFoundException extends Exception {[m
[32m+[m[32m    public VerificationTokenNotFoundException(String message) {[m
[32m+[m[32m        super(message);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/src/main/java/me/theeninja/cargo/VerificationTokenRepository.java b/src/main/java/me/theeninja/cargo/VerificationTokenRepository.java[m
[1mnew file mode 100644[m
[1mindex 0000000..ad9841b[m
[1m--- /dev/null[m
[1m+++ b/src/main/java/me/theeninja/cargo/VerificationTokenRepository.java[m
[36m@@ -0,0 +1,13 @@[m
[32m+[m[32mpackage me.theeninja.cargo;[m
[32m+[m
[32m+[m[32mimport me.theeninja.cargo.account.Account;[m
[32m+[m[32mimport org.springframework.data.repository.CrudRepository;[m
[32m+[m[32mimport org.springframework.stereotype.Repository;[m
[32m+[m
[32m+[m[32mimport java.util.Optional;[m
[32m+[m
[32m+[m[32m@Repository[m
[32m+[m[32mpublic interface VerificationTokenRepository extends CrudRepository<VerificationToken, Long> {[m
[32m+[m[32m    Optional<VerificationToken> findByTokenString(String tokenString);[m
[32m+[m[32m    Optional<VerificationToken> findByAccount(Account account);[m
[32m+[m[32m}[m
[1mdiff --git a/src/main/java/me/theeninja/cargo/account/Account.java b/src/main/java/me/theeninja/cargo/account/Account.java[m
[1mnew file mode 100644[m
[1mindex 0000000..9acca7a[m
[1m--- /dev/null[m
[1m+++ b/src/main/java/me/theeninja/cargo/account/Account.java[m
[36m@@ -0,0 +1,65 @@[m
[32m+[m[32mpackage me.theeninja.cargo.account;[m
[32m+[m
[32m+[m[32mimport lombok.Data;[m
[32m+[m[32mimport org.springframework.security.core.GrantedAuthority;[m
[32m+[m[32mimport org.springframework.security.core.userdetails.UserDetails;[m
[32m+[m
[32m+[m[32mimport javax.persistence.*;[m
[32m+[m[32mimport java.util.Collection;[m
[32m+[m[32mimport java.util.HashSet;[m
[32m+[m[32mimport java.util.Set;[m
[32m+[m
[32m+[m[32m@Data[m
[32m+[m[32m@Entity[m
[32m+[m[32mpublic class Account implements UserDetails {[m
[32m+[m[32m    @Id[m
[32m+[m[32m    @GeneratedValue[m
[32m+[m[32m    private Long id;[m
[32m+[m
[32m+[m[32m    private String firstName;[m
[32m+[m[32m    private String lastName;[m
[32m+[m
[32m+[m[32m    private String hashedPassword;[m
[32m+[m
[32m+[m[32m    private String phoneNumber;[m
[32m+[m
[32m+[m[32m    private byte[] driversLicenseImage;[m
[32m+[m
[32m+[m[32m    private byte[] insuranceCardImage;[m
[32m+[m
[32m+[m[32m    @ElementCollection[m
[32m+[m[32m    private Set<AccountRole> accountRoles;[m
[32m+[m
[32m+[m[32m    private String hashedSocialSecurityNumber;[m
[32m+[m[32m    private String emailAddress;[m
[32m+[m
[32m+[m[32m    @ElementCollection[m
[32m+[m[32m    private Collection<GrantedAuthority> authorities;[m
[32m+[m
[32m+[m[32m    private boolean enabled = false;[m
[32m+[m
[32m+[m[32m    @Override[m
[32m+[m[32m    public String getPassword() {[m
[32m+[m[32m        return getHashedPassword();[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    @Override[m
[32m+[m[32m    public String getUsername() {[m
[32m+[m[32m        return getEmailAddress();[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    @Override[m
[32m+[m[32m    public boolean isAccountNonExpired() {[m
[32m+[m[32m        return false;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    @Override[m
[32m+[m[32m    public boolean isAccountNonLocked() {[m
[32m+[m[32m        return false;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    @Override[m
[32m+[m[32m    public boolean isCredentialsNonExpired() {[m
[32m+[m[32m        return false;[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/src/main/java/me/theeninja/cargo/account/AccountController.java b/src/main/java/me/theeninja/cargo/account/AccountController.java[m
[1mnew file mode 100644[m
[1mindex 0000000..b7baa6e[m
[1m--- /dev/null[m
[1m+++ b/src/main/java/me/theeninja/cargo/account/AccountController.java[m
[36m@@ -0,0 +1,53 @@[m
[32m+[m[32mpackage me.theeninja.cargo.account;[m
[32m+[m
[32m+[m[32mimport lombok.Getter;[m
[32m+[m[32mimport lombok.val;[m
[32m+[m[32mimport me.theeninja.cargo.VerificationTokenNotFoundException;[m
[32m+[m[32mimport org.springframework.beans.factory.annotation.Autowired;[m
[32m+[m[32mimport org.springframework.web.bind.annotation.ModelAttribute;[m
[32m+[m[32mimport org.springframework.web.bind.annotation.PostMapping;[m
[32m+[m[32mimport org.springframework.web.bind.annotation.RequestParam;[m
[32m+[m[32mimport org.springframework.web.bind.annotation.RestController;[m
[32m+[m
[32m+[m[32mimport java.time.Instant;[m
[32m+[m[32mimport java.time.temporal.ChronoUnit;[m
[32m+[m
[32m+[m[32m@RestController[m
[32m+[m[32m@Getter[m
[32m+[m[32mpublic class AccountController {[m
[32m+[m[32m    private final AccountService accountService;[m
[32m+[m
[32m+[m[32m    @Autowired[m
[32m+[m[32m    public AccountController(AccountService accountService) {[m
[32m+[m[32m        this.accountService = accountService;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    @PostMapping("/register")[m
[32m+[m[32m    public void attemptAccountRegistration(final @ModelAttribute("accountSignUpInformation") AccountSignUpInformation accountSignUpInformation) {[m
[32m+[m[32m        try {[m
[32m+[m[32m            getAccountService().registerUserAccount(accountSignUpInformation);[m
[32m+[m[32m        } catch (AccountCredentialExistsException e) {[m
[32m+[m[32m            e.printStackTrace();[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    @PostMapping("/verify")[m
[32m+[m[32m    public void attemptAccountVerification(final @RequestParam("tokenString") String verificationTokenString) {[m
[32m+[m[32m        try {[m
[32m+[m[32m            val verificationToken = getAccountService().getVerificationToken(verificationTokenString);[m
[32m+[m
[32m+[m[32m            val account = verificationToken.getAccount();[m
[32m+[m
[32m+[m[32m            val currentInstant = Instant.now();[m
[32m+[m[32m            val expiryInstant = verificationToken.getVerificationRequestInstant().plus(1, ChronoUnit.DAYS);[m
[32m+[m
[32m+[m[32m            if (expiryInstant.isBefore(currentInstant)) {[m
[32m+[m[32m                System.out.println("EXPIRED"); // TODO Finish[m
[32m+[m[32m            }[m
[32m+[m
[32m+[m[32m            getAccountService().verifyAccount(account);[m
[32m+[m[32m        } catch (VerificationTokenNotFoundException e) {[m
[32m+[m[32m            e.printStackTrace();[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/src/main/java/me/theeninja/cargo/account/AccountCredentialExistsException.java b/src/main/java/me/theeninja/cargo/account/AccountCredentialExistsException.java[m
[1mnew file mode 100644[m
[1mindex 0000000..68f1334[m
[1m--- /dev/null[m
[1m+++ b/src/main/java/me/theeninja/cargo/account/AccountCredentialExistsException.java[m
[36m@@ -0,0 +1,7 @@[m
[32m+[m[32mpackage me.theeninja.cargo.account;[m
[32m+[m
[32m+[m[32mpublic class AccountCredentialExistsException extends Exception {[m
[32m+[m[32m    public AccountCredentialExistsException(String message) {[m
[32m+[m[32m        super(message);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/src/main/java/me/theeninja/cargo/account/AccountRepository.java b/src/main/java/me/theeninja/cargo/account/AccountRepository.java[m
[1mnew file mode 100644[m
[1mindex 0000000..b0ccc24[m
[1m--- /dev/null[m
[1m+++ b/src/main/java/me/theeninja/cargo/account/AccountRepository.java[m
[36m@@ -0,0 +1,11 @@[m
[32m+[m[32mpackage me.theeninja.cargo.account;[m
[32m+[m
[32m+[m[32mimport org.springframework.data.repository.CrudRepository;[m
[32m+[m
[32m+[m[32mimport java.util.Optional;[m
[32m+[m
[32m+[m[32mpublic interface AccountRepository extends CrudRepository<Account, Long> {[m
[32m+[m[32m    Optional<Account> findAccountByHashedSocialSecurityNumber(String hashedSocialSecurityNumber);[m
[32m+[m[32m    Optional<Account> findAccountByEmailAddress(String emailAddress);[m
[32m+[m[32m    Optional<Account> findAccountByPhoneNumber(String phoneNumber);[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/src/main/java/me/theeninja/cargo/account/AccountRole.java b/src/main/java/me/theeninja/cargo/account/AccountRole.java[m
[1mnew file mode 100644[m
[1mindex 0000000..54d42d1[m
[1m--- /dev/null[m
[1m+++ b/src/main/java/me/theeninja/cargo/account/AccountRole.java[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32mpackage me.theeninja.cargo.account;[m
[32m+[m
[32m+[m[32mpublic enum AccountRole {[m
[32m+[m[32m    RENTER,[m
[32m+[m[32m    DRIVER[m
[32m+[m[32m}[m
[1mdiff --git a/src/main/java/me/theeninja/cargo/account/AccountService.java b/src/main/java/me/theeninja/cargo/account/AccountService.java[m
[1mnew file mode 100644[m
[1mindex 0000000..06815a2[m
[1m--- /dev/null[m
[1m+++ b/src/main/java/me/theeninja/cargo/account/AccountService.java[m
[36m@@ -0,0 +1,83 @@[m
[32m+[m[32mpackage me.theeninja.cargo.account;[m
[32m+[m
[32m+[m[32mimport lombok.Getter;[m
[32m+[m[32mimport lombok.val;[m
[32m+[m[32mimport me.theeninja.cargo.*;[m
[32m+[m[32mimport org.springframework.beans.factory.annotation.Autowired;[m
[32m+[m[32mimport org.springframework.security.core.userdetails.UserDetails;[m
[32m+[m[32mimport org.springframework.security.core.userdetails.UserDetailsService;[m
[32m+[m[32mimport org.springframework.security.core.userdetails.UsernameNotFoundException;[m
[32m+[m[32mimport org.springframework.stereotype.Service;[m
[32m+[m
[32m+[m[32mimport java.util.Optional;[m
[32m+[m
[32m+[m[32m@Service[m
[32m+[m[32m@Getter[m
[32m+[m[32mpublic class AccountService implements UserDetailsService {[m
[32m+[m[32m    private final AccountRepository accountRepository;[m
[32m+[m[32m    private final VerificationTokenRepository verificationTokenRepository;[m
[32m+[m
[32m+[m[32m    @Autowired[m
[32m+[m[32m    public AccountService(AccountRepository accountRepository, VerificationTokenRepository verificationTokenRepository) {[m
[32m+[m[32m        this.accountRepository = accountRepository;[m
[32m+[m[32m        this.verificationTokenRepository = verificationTokenRepository;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public Account registerUserAccount(final AccountSignUpInformation accountSignUpInformation) throws AccountCredentialExistsException {[m
[32m+[m[32m        val emailAddress = accountSignUpInformation.getEmailAddress();[m
[32m+[m
[32m+[m[32m        if (getAccountRepository().findAccountByEmailAddress(emailAddress).isPresent()) {[m
[32m+[m[32m            throw new EmailExistsException(String.format("The email %s is already registered.", emailAddress));[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        val socialSecurityNumber = accountSignUpInformation.getSocialSecurityNumber();[m
[32m+[m[32m        val hashedSocialSecurityNumber = socialSecurityNumber;[m
[32m+[m
[32m+[m[32m        if (getAccountRepository().findAccountByHashedSocialSecurityNumber(hashedSocialSecurityNumber).isPresent()) {[m
[32m+[m[32m            throw new SocialSecurityNumberExistsException(String.format("The social security number %s is already registered.", socialSecurityNumber));[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        val phoneNumber = accountSignUpInformation.getPhoneNumber();[m
[32m+[m
[32m+[m[32m        if (getAccountRepository().findAccountByPhoneNumber(phoneNumber).isPresent()) {[m
[32m+[m[32m            throw new PhoneNumberExistsException(String.format("The phone number %s is already registered.", phoneNumber));[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        val account = new Account();[m
[32m+[m
[32m+[m[32m        account.getAccountRoles().addAll(accountSignUpInformation.getAccountRoles());[m
[32m+[m[32m        account.setFirstName(accountSignUpInformation.getFirstName());[m
[32m+[m[32m        account.setLastName(accountSignUpInformation.getLastName());[m
[32m+[m[32m        account.setEmailAddress(accountSignUpInformation.getEmailAddress());[m
[32m+[m[32m        account.setDriversLicenseImage(accountSignUpInformation.getDriversLicenseImage());[m
[32m+[m[32m        account.setHashedPassword(account.getHashedPassword());[m
[32m+[m[32m        account.setInsuranceCardImage(account.getInsuranceCardImage());[m
[32m+[m[32m        account.setHashedSocialSecurityNumber(account.getHashedSocialSecurityNumber());[m
[32m+[m
[32m+[m[32m        return getAccountRepository().save(account);[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    @Override[m
[32m+[m[32m    public UserDetails loadUserByUsername(final String emailAddress) throws UsernameNotFoundException {[m
[32m+[m[32m        return getAccountRepository().findAccountByEmailAddress(emailAddress)[m
[32m+[m[32m                                     .orElseThrow(() -> new UsernameNotFoundException(String.format("The email address %s is not registered.", emailAddress)));[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public VerificationToken newVerificationToken(final Account account, final String verificationTokenString) {[m
[32m+[m[32m        val verificationToken = new VerificationToken();[m
[32m+[m[32m        verificationToken.setAccount(account);[m
[32m+[m[32m        verificationToken.setTokenString(verificationTokenString);[m
[32m+[m
[32m+[m[32m        return getVerificationTokenRepository().save(verificationToken);[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public VerificationToken getVerificationToken(final String verificationTokenString) throws VerificationTokenNotFoundException {[m
[32m+[m[32m        Optional<VerificationToken> verificationToken = getVerificationTokenRepository().findByTokenString(verificationTokenString);[m
[32m+[m
[32m+[m[32m        return verificationToken.orElseThrow(() -> new VerificationTokenNotFoundException(String.format("The verification token %s does not exist.", verificationTokenString)));[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public void verifyAccount(final Account account) {[m
[32m+[m[32m        account.setEnabled(true);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/src/main/java/me/theeninja/cargo/account/AccountSignUpInformation.java b/src/main/java/me/theeninja/cargo/account/AccountSignUpInformation.java[m
[1mnew file mode 100644[m
[1mindex 0000000..d7529d4[m
[1m--- /dev/null[m
[1m+++ b/src/main/java/me/theeninja/cargo/account/AccountSignUpInformation.java[m
[36m@@ -0,0 +1,46 @@[m
[32m+[m[32mpackage me.theeninja.cargo.account;[m
[32m+[m
[32m+[m[32mimport lombok.Getter;[m
[32m+[m
[32m+[m[32mimport javax.persistence.Entity;[m
[32m+[m[32mimport javax.validation.constraints.NotEmpty;[m
[32m+[m[32mimport javax.validation.constraints.NotNull;[m
[32m+[m[32mimport java.util.Set;[m
[32m+[m
[32m+[m[32m@Getter[m
[32m+[m[32mpublic class AccountSignUpInformation {[m
[32m+[m[32m    @NotNull[m
[32m+[m[32m    @NotEmpty[m
[32m+[m[32m    private String firstName;[m
[32m+[m
[32m+[m[32m    @NotNull[m
[32m+[m[32m    @NotEmpty[m
[32m+[m[32m    private String lastName;[m
[32m+[m
[32m+[m[32m    @NotNull[m
[32m+[m[32m    @NotEmpty[m
[32m+[m[32m    private String emailAddress;[m
[32m+[m
[32m+[m[32m    @NotNull[m
[32m+[m[32m    @NotEmpty[m
[32m+[m[32m    private String password;[m
[32m+[m
[32m+[m[32m    @NotNull[m
[32m+[m[32m    @NotEmpty[m
[32m+[m[32m    private String confirmedPassword;[m
[32m+[m
[32m+[m[32m    @NotNull[m
[32m+[m[32m    private byte[] driversLicenseImage;[m
[32m+[m
[32m+[m[32m    @NotNull[m
[32m+[m[32m    @NotEmpty[m
[32m+[m[32m    private Set<AccountRole> accountRoles;[m
[32m+[m
[32m+[m[32m    @NotNull[m
[32m+[m[32m    @NotEmpty[m
[32m+[m[32m    private String phoneNumber;[m
[32m+[m
[32m+[m[32m    @NotNull[m
[32m+[m[32m    @NotEmpty[m
[32m+[m[32m    private String socialSecurityNumber;[m
[32m+[m[32m}[m
[1mdiff --git a/src/main/java/me/theeninja/cargo/account/EmailExistsException.java b/src/main/java/me/theeninja/cargo/account/EmailExistsException.java[m
[1mnew file mode 100644[m
[1mindex 0000000..c6d7241[m
[1m--- /dev/null[m
[1m+++ b/src/main/java/me/theeninja/cargo/account/EmailExistsException.java[m
[36m@@ -0,0 +1,7 @@[m
[32m+[m[32mpackage me.theeninja.cargo.account;[m
[32m+[m
[32m+[m[32mpublic class EmailExistsException extends AccountCredentialExistsException {[m
[32m+[m[32m    public EmailExistsException(String message) {[m
[32m+[m[32m        super(message);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/src/main/resources/application.properties b/src/main/resources/application.properties[m
[1mnew file mode 100644[m
[1mindex 0000000..b111096[m
[1m--- /dev/null[m
[1m+++ b/src/main/resources/application.properties[m
[36m@@ -0,0 +1,4 @@[m
[32m+[m[32mspring.jpa.hibernate.ddl-auto=create[m
[32m+[m[32mspring.datasource.url=jdbc:mysql://localhost:3306/db_cargo?serverTimezone=UTC[m
[32m+[m[32mspring.datasource.username=root[m
[32m+[m[32mspring.datasource.password=root[m
[1mdiff --git a/src/main/resources/system.properties b/src/main/resources/system.properties[m
[1mnew file mode 100644[m
[1mindex 0000000..180a273[m
[1m--- /dev/null[m
[1m+++ b/src/main/resources/system.properties[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32mjava.runtime.version=11[m
\ No newline at end of file[m
