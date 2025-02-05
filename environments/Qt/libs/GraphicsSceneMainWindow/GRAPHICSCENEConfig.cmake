cmake_minimum_required(VERSION 3.8.0 FATAL_ERROR)

#######################################
set (GSROOT 		${CMAKE_CURRENT_LIST_DIR})
set (SRCDIR  	${GSROOT}/src)
set (GUIDODIR  	${GSROOT}/../../..)

set (CMAKE_AUTOMOC ON)
set (CMAKE_AUTOUIC ON)
set (CMAKE_AUTORCC ON)

if (QT6)
find_package(Qt6 COMPONENTS Xml Widgets PrintSupport REQUIRED)
set (QTINCDIRS 	${Qt6Xml_INCLUDE_DIRS} ${Qt6Widget_INCLUDE_DIRS} ${Qt6PrintSupport_INCLUDE_DIRS})
set (QTVERS ${Qt6Widgets_VERSION} )
else()
find_package(Qt5 COMPONENTS Xml Widgets PrintSupport REQUIRED)
set (QTINCDIRS 	${Qt5Xml_INCLUDE_DIRS} ${Qt5Widget_INCLUDE_DIRS} ${Qt5PrintSupport_INCLUDE_DIRS})
set (QTVERS ${Qt5Widgets_VERSION} )
endif()

#######################################
# set sources and headers files
file (GLOB SRC  RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} ${SRCDIR}/*/*.cpp )
file (GLOB GRAPHICSCENE_HEADERS  RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} 
	${GSROOT}/include/*.h 
	${SRCDIR}/*/*.h
)

#######################################
# set includes
set (INCDIRS 
	${GSROOT}
	${GSROOT}/include 
	${SRCDIR}/LanguageCommandPalette
)
set (GRAPHICSCENE_INCLUDE_DIRS ${INCDIRS} ${QTINCDIRS})

set (UI ${SRCDIR}/GUI/ResolutionDialog.ui)
set (RSRC ${GSROOT}/rsc/application.qrc)

set (GRAPHICSCENE_SRC ${SRC} ${UI} ${RSRC})

message (STATUS "GraphicsSceneMainWindow library using Qt version ${QTVERS}")
