# $FreeBSD: head/devel/cpp-hocon/Makefile 439934 2017-05-02 06:48:10Z jbeich $

PORTNAME=	cpp-hocon
PORTVERSION=	0.1.5
CATEGORIES=	devel

MAINTAINER=	jslagle@gmail.com
COMMENT=	C++ configuration library

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

LIB_DEPENDS=	libboost_system.so:devel/boost-libs \
		libleatherman_util.so:devel/leatherman

USE_GITHUB=	yes
GH_ACCOUNT=	puppetlabs

CMAKE_ARGS+=	-DBUILD_SHARED_LIBS=SHARED
TEST_TARGET=	test
USES=		cmake
USE_LDCONFIG=	yes

.include <bsd.port.mk>
