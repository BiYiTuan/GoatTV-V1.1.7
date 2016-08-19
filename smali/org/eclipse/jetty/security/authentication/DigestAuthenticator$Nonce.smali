.class Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;
.super Ljava/lang/Object;
.source "DigestAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Nonce"
.end annotation


# instance fields
.field _nc:Ljava/util/concurrent/atomic/AtomicInteger;

.field final _nonce:Ljava/lang/String;

.field final _ts:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "ts"    # J

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_nc:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_nonce:Ljava/lang/String;

    .line 68
    iput-wide p2, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_ts:J

    .line 69
    return-void
.end method
