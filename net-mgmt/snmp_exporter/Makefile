PORTNAME=	snmp_exporter
PORTVERSION=	0.7.0
DISTVERSIONPREFIX=v
CATEGORIES=	net-mgmt

MAINTAINER=	zleslie@freebsd.org
COMMENT=	Prometheus exporter for SNMP metrics

LICENSE=	APACHE20

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	prometheus

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	github.com/${GH_ACCOUNT}/${PORTNAME}

PLIST_FILES=	bin/snmp_exporter

USE_RC_SUBR=	snmp_exporter

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/snmp_exporter ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
