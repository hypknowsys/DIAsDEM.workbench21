@ECHO OFF

REM DIAsDEM Workbench 2.2 (http://www.hypKNOWsys.org)
REM
REM After setting the following two environment variables, DIAsDEMbatch -- the
REM command line batch script processor of the DIAsDEM Workbench -- can be
REM launched using this shell script. Make %DIAsDEM_HOME%\bin your current
REM working directory and submit the following command at the system prompt:
REM
REM prompt% diasdembatch.bat <DIAsDEM Batch Script File Name> verbose
REM
REM The first environment variable JAVA_HOME contains the absolute path to
REM the Java directory. It must be adjusted according to your system.
REM Example: SET DIAsDEM_HOME=C:\Programs\Java\j2re1.4.0_01
REM
REM The second environment variable DIAsDEM_HOME contains the path of the
REM DIAsDEM installation. This directory contains the sub-directories \bin,
REM \data, \doc and \lib. The environment variable DIAsDEM_HOME must be
REM adjusted according to the installation of the DIAsDEM Workbench.
REM Example: SET DIAsDEM_HOME=C:\DIAsDEM.workbench22
REM
REM Note: You may have to adjust the size of memory allocated to the Java
REM Virtual Machine in the environment variable DIAsDEM_JAVA_OPTIONS (-ms:
REM size at start of JVM resp. -mx: maximum size). The size of two stacks
REM used by the JVM (-ss resp. -oss) can be changed as well. See the Java
REM tools documentation for details.
REM
REM If you are using Windows 95 or Windows 98, you might have to create a
REM pif-file to start the DIAsDEM Workbench by double-clicking on its icon.
REM Within the corresponding pif-file, manually increase the environment
REM memory that Windows allocates to the batch file (2048 kByte).


SET DIAsDEM_HOME=C:\Users\YourName\DIAsDEM.workbench22
SET JAVA_HOME=C:\Programs\YourJavaPath


REM Please do not modify the following lines without appropriate knowledge.
REM Note that the memory allocated to the Java virtual machine corresponds
REM is appropriate for a computer with 256 MB RAM.

SET DIAsDEM_JAVA_OPTIONS=-ms32m -mx200m -ss4m -oss4m -Dfile.encoding=ISO-8859-1

ECHO ON
"%JAVA_HOME%\bin\java" %DIAsDEM_JAVA_OPTIONS% -classpath "%DIAsDEM_HOME%\lib\diasdem-workbench-22.jar";"%DIAsDEM_HOME%\lib\weka-3.4.3.jar";"%DIAsDEM_HOME%\lib\jdom-1.0.jar";"%DIAsDEM_HOME%\lib\gnu-regexp-1.0.8.jar";"%DIAsDEM_HOME%\lib\looks-1.2.2.jar";"%DIAsDEM_HOME%\lib\forms-1.0.2.jar";"%DIAsDEM_HOME%\lib\googleapi.jar" org.hypknowsys.diasdem.client.commandLine.DIAsDEMbatchProcessor %1 %2
