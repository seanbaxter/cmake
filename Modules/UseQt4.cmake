#############################################################################
#
#       Sets up C and C++ to use Qt 4.  It is assumed that FindQt.cmake
#       has already been loaded.  See FindQt.cmake for information on
#       how to load Qt 4 into your CMake project.
#
#############################################################################

ADD_DEFINITIONS(${QT_DEFINITIONS})

INCLUDE_DIRECTORIES(${QT_INCLUDE_DIR})

SET(QT_LIBRARIES "")

IF (NOT QT_DONT_USE_QTCORE)
  IF (QT_QTCORE_FOUND)
    INCLUDE_DIRECTORIES(${QT_QTCORE_INCLUDE_DIR})
    IF (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
      SET(QT_LIBRARIES ${QT_LIBRARIES}
        optimized "${QT_QTCORE_LIBRARY}"
        debug "${QT_QTCORE_LIBRARY_DEBUG}"
        )
    ELSE (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
      SET(QT_LIBRARIES ${QT_LIBRARIES} "${QT_QTCORE_LIBRARY}" )
    ENDIF (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
    IF (UNIX)
      IF (CMAKE_DL_LIBS)
        SET (QT_LIBRARIES ${QT_LIBRARIES} ${CMAKE_DL_LIBS})
      ENDIF (CMAKE_DL_LIBS)
    ENDIF (UNIX)
  ELSE (QT_QTCORE_FOUND)
    MESSAGE("QtCore library not found.")
  ENDIF (QT_QTCORE_FOUND)
ENDIF (NOT QT_DONT_USE_QTCORE)

IF (NOT QT_DONT_USE_QTGUI)
  IF (QT_QTGUI_FOUND)
    INCLUDE_DIRECTORIES(${QT_QTGUI_INCLUDE_DIR})
    IF (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
      SET(QT_LIBRARIES ${QT_LIBRARIES}
        optimized "${QT_QTGUI_LIBRARY}"
        debug "${QT_QTGUI_LIBRARY_DEBUG}"
        )
    ELSE (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
      SET(QT_LIBRARIES ${QT_LIBRARIES} "${QT_QTGUI_LIBRARY}")
    ENDIF (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
    IF (UNIX)
      IF (X11_FOUND)
        SET (QT_LIBRARIES ${QT_LIBRARIES} ${X11_LIBRARIES})
      ENDIF (X11_FOUND)
    ENDIF (UNIX)
  ELSE (QT_QTGUI_FOUND)
    MESSAGE("QtGui library not found.")
  ENDIF (QT_QTGUI_FOUND)
ENDIF (NOT QT_DONT_USE_QTGUI)

IF (QT_USE_QT3SUPPORT)
  IF (QT_QT3SUPPORT_FOUND)
    INCLUDE_DIRECTORIES(${QT_QT3SUPPORT_INCLUDE_DIR})
    ADD_DEFINITIONS(-DQT3_SUPPORT)
    IF (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
      SET(QT_LIBRARIES ${QT_LIBRARIES}
        optimized "${QT_QT3SUPPORT_LIBRARY}"
        debug "${QT_QT3SUPPORT_LIBRARY_DEBUG}"
        )
    ELSE (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
      SET(QT_LIBRARIES ${QT_LIBRARIES} "${QT_QT3SUPPORT_LIBRARY}")
    ENDIF (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
  ELSE (QT_QT3SUPPORT_FOUND)
    MESSAGE("Qt3Support library not found.")
  ENDIF (QT_QT3SUPPORT_FOUND)
ENDIF (QT_USE_QT3SUPPORT)

IF (QT_USE_QTASSISTANT)
  IF (QT_QTASSISTANT_FOUND)
    INCLUDE_DIRECTORIES(${QT_QTASSISTANT_INCLUDE_DIR})
    IF (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
      SET(QT_LIBRARIES ${QT_LIBRARIES}
        optimized "${QT_QTASSISTANT_LIBRARY}"
        debug "${QT_QTASSISTANT_LIBRARY_DEBUG}"
        )
    ELSE (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
      SET(QT_LIBRARIES ${QT_LIBRARIES} "${QT_QTASSISTANT_LIBRARY}")
    ENDIF (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
  ELSE (QT_QTASSISTANT_FOUND)
    MESSAGE("QtAssistant library not found.")
  ENDIF (QT_QTASSISTANT_FOUND)
ENDIF (QT_USE_QTASSISTANT)

IF (QT_USE_QTDESIGNER)
  IF (QT_QTDESIGNER_FOUND)
    INCLUDE_DIRECTORIES(${QT_QTDESIGNER_INCLUDE_DIR})
    IF (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
      SET(QT_LIBRARIES ${QT_LIBRARIES}
        optimized "${QT_QTDESIGNER_LIBRARY}"
        debug "${QT_QTDESIGNER_LIBRARY_DEBUG}"
        )
    ELSE (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
      SET(QT_LIBRARIES ${QT_LIBRARIES} "${QT_QTDESIGNER_LIBRARY}")
    ENDIF (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
  ELSE (QT_QTDESIGNER_FOUND)
    MESSAGE("QtDesigner library not found.")
  ENDIF (QT_QTDESIGNER_FOUND)
ENDIF (QT_USE_QTDESIGNER)

IF (QT_USE_QTMOTIF)
  IF (QT_QTMOTIF_FOUND)
    INCLUDE_DIRECTORIES(${QT_QTMOTIF_INCLUDE_DIR})
    IF (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
      SET(QT_LIBRARIES ${QT_LIBRARIES}
        optimized "${QT_QTMOTIF_LIBRARY}"
        debug "${QT_QTMOTIF_LIBRARY_DEBUG}"
        )
    ELSE (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
      SET(QT_LIBRARIES ${QT_LIBRARIES} "${QT_QTMOTIF_LIBRARY}")
    ENDIF (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
  ELSE (QT_QTMOTIF_FOUND)
    MESSAGE("QtMotif library not found.")
  ENDIF (QT_QTMOTIF_FOUND)
ENDIF (QT_USE_QTMOTIF)

IF (QT_USE_QTNETWORK)
  IF (QT_QTNETWORK_FOUND)
    INCLUDE_DIRECTORIES(${QT_QTNETWORK_INCLUDE_DIR})
    IF (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
      SET(QT_LIBRARIES ${QT_LIBRARIES}
        optimized "${QT_QTNETWORK_LIBRARY}"
        debug "${QT_QTNETWORK_LIBRARY_DEBUG}"
        )
    ELSE (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
      SET(QT_LIBRARIES ${QT_LIBRARIES} "${QT_QTNETWORK_LIBRARY}")
    ENDIF (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
  ELSE (QT_QTNETWORK_FOUND)
    MESSAGE("QtNetwork library not found.")
  ENDIF (QT_QTNETWORK_FOUND)
ENDIF (QT_USE_QTNETWORK)

IF (QT_USE_QTNSPLUGIN)
  IF (QT_QTNSPLUGIN_FOUND)
    INCLUDE_DIRECTORIES(${QT_QTNSPLUGIN_INCLUDE_DIR})
    IF (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
      SET(QT_LIBRARIES ${QT_LIBRARIES}
        optimized "${QT_QTNSPLUGIN_LIBRARY}"
        debug "${QT_QTNSPLUGIN_LIBRARY_DEBUG}"
        )
    ELSE (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
      SET(QT_LIBRARIES ${QT_LIBRARIES} "${QT_QTNSPLUGIN_LIBRARY}")
    ENDIF (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
  ELSE (QT_QTNSPLUGIN_FOUND)
    MESSAGE("QtNsPlugin library not found.")
  ENDIF (QT_QTNSPLUGIN_FOUND)
ENDIF (QT_USE_QTNSPLUGIN)

IF (QT_USE_QTOPENGL)
  IF (QT_QTOPENGL_FOUND)
    INCLUDE_DIRECTORIES(${QT_QTOPENGL_INCLUDE_DIR})
    IF (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
      SET(QT_LIBRARIES ${QT_LIBRARIES}
        optimized "${QT_QTOPENGL_LIBRARY}"
        debug "${QT_QTOPENGL_LIBRARY_DEBUG}"
        )
    ELSE (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
      SET(QT_LIBRARIES ${QT_LIBRARIES} "${QT_QTOPENGL_LIBRARY}")
    ENDIF (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
  ELSE (QT_QTOPENGL_FOUND)
    MESSAGE("QtOpenGL library not found.")
  ENDIF (QT_QTOPENGL_FOUND)
ENDIF (QT_USE_QTOPENGL)

IF (QT_USE_QTSQL)
  IF (QT_QTSQL_FOUND)
    INCLUDE_DIRECTORIES(${QT_QTSQL_INCLUDE_DIR})
    IF (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
      SET(QT_LIBRARIES ${QT_LIBRARIES}
        optimized "${QT_QTSQL_LIBRARY}"
        debug "${QT_QTSQL_LIBRARY_DEBUG}"
        )
    ELSE (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
      SET(QT_LIBRARIES ${QT_LIBRARIES} "${QT_QTSQL_LIBRARY}")
    ENDIF (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
  ELSE (QT_QTSQL_FOUND)
    MESSAGE("QtSql library not found.")
  ENDIF (QT_QTSQL_FOUND)
ENDIF (QT_USE_QTSQL)

IF (QT_USE_QTXML)
  IF (QT_QTXML_FOUND)
    INCLUDE_DIRECTORIES(${QT_QTXML_INCLUDE_DIR})
    IF (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
      SET(QT_LIBRARIES ${QT_LIBRARIES}
        optimized "${QT_QTXML_LIBRARY}"
        debug "${QT_QTXML_LIBRARY_DEBUG}"
        )
    ELSE (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
      SET(QT_LIBRARIES ${QT_LIBRARIES} "${QT_QTXML_LIBRARY}")
    ENDIF (CMAKE_CONFIGURATION_TYPES OR CMAKE_BUILD_TYPE)
  ELSE (QT_QTXML_FOUND)
    MESSAGE("QtXml library not found.")
  ENDIF (QT_QTXML_FOUND)
ENDIF (QT_USE_QTXML)
