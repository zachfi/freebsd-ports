# $FreeBSD$

PORTNAME=	cpp-hocon
PORTVERSION=	0.1.4
CATEGORIES=	devel

MAINTAINER=	jslagle@gmail.com
COMMENT=	C++ Configuration library

LICENSE=	APACHE20

LIB_DEPENDS=	libboost_system.so:devel/boost-libs
LIB_DEPENDS+=	libleatherman_util.so:devel/leatherman

USE_GITHUB=	yes
GH_ACCOUNT=	puppetlabs
GH_PROJECT=	cpp-hocon
GH_TAGNAME=	0.1.4

USES=		cmake
CMAKE_ARGS+=    -DCPP_HOCON_SHARED:BOOL=ON

.include <bsd.port.mk>
