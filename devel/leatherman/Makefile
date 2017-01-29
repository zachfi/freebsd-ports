# $FreeBSD$

PORTNAME=	leatherman
PORTVERSION=	0.10.1
CATEGORIES=	devel

MAINTAINER=	jslagle@gmail.com
COMMENT=	Leatherman C++ Tool library

LICENSE=	APACHE20

LIB_DEPENDS=	libboost_system.so:devel/boost-libs
LIB_DEPENDS+=	libcurl.so:ftp/curl

USES=		cmake
USE_GITHUB=	yes
GH_ACCOUNT=	puppetlabs
USE_RUBY=	yes
USE_LDCONFIG=	yes
CMAKE_ARGS+=	-DLEATHERMAN_SHARED:BOOL=ON
PLIST_SUB+=	PORTVERSION=${PORTVERSION}

.include <bsd.port.mk>
