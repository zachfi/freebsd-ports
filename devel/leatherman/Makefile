# $FreeBSD: head/devel/leatherman/Makefile 435354 2017-03-03 17:25:20Z amdmi3 $

PORTNAME=	leatherman
PORTVERSION=	1.0.0
CATEGORIES=	devel

MAINTAINER=	jslagle@gmail.com
COMMENT=	Leatherman C++ Tool library

LICENSE=	APACHE20

LIB_DEPENDS=	libboost_system.so:devel/boost-libs \
		libcurl.so:ftp/curl

USE_GITHUB=	yes
GH_ACCOUNT=	puppetlabs

USES=		cmake gettext
USE_RUBY=	yes
CMAKE_ARGS=	-DLEATHERMAN_SHARED:BOOL=ON
USE_LDCONFIG=	yes
TEST_TARGET=	test

PLIST_SUB=	PORTVERSION=${PORTVERSION}

.include <bsd.port.mk>
