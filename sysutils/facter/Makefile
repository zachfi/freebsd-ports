# $FreeBSD: head/sysutils/facter/Makefile 430692 2017-01-06 08:45:03Z jbeich $

PORTNAME=	facter
PORTVERSION=	3.5.1
#PORTREVISION=	4
CATEGORIES=	sysutils
MASTER_SITES=	http://downloads.puppetlabs.com/facter/

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Cross-platform library for retrieving facts from OS

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

LIB_DEPENDS=	libboost_system.so:devel/boost-libs \
		libyaml-cpp.so:devel/yaml-cpp \
		libcpp-hocon.so:devel/cpp-hocon

BUILD_DEPENDS=	leatherman>=0:devel/leatherman \
		cpp-hocon>=0:devel/cpp-hocon

PLIST_SUB+=	PORTVERSION="${PORTVERSION}"

USE_LDCONFIG=	yes
USE_RUBY=	yes
USES=	cmake compiler:c++11-lib
CMAKE_ARGS+=	-DMAN_PATH=${MANPREFIX}/man

CONFLICTS_INSTALL=	rubygem-facter-2*

BROKEN_DragonFly=	DragonFly is not supported upstream

.include <bsd.port.pre.mk>

.if ${OPSYS} == FreeBSD && ${COMPILER_FEATURES:Mlibstdc++}
BROKEN=		Build with system libstdc++ is unsupported
.endif

.include <bsd.port.post.mk>
