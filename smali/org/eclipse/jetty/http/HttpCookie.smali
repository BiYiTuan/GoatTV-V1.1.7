.class public Lorg/eclipse/jetty/http/HttpCookie;
.super Ljava/lang/Object;
.source "HttpCookie.java"


# instance fields
.field private final _comment:Ljava/lang/String;

.field private final _domain:Ljava/lang/String;

.field private final _httpOnly:Z

.field private final _maxAge:I

.field private final _name:Ljava/lang/String;

.field private final _path:Ljava/lang/String;

.field private final _secure:Z

.field private final _value:Ljava/lang/String;

.field private final _version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_name:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpCookie;->_value:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpCookie;->_comment:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpCookie;->_domain:Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_httpOnly:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_maxAge:I

    .line 38
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpCookie;->_path:Ljava/lang/String;

    .line 39
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_secure:Z

    .line 40
    iput v1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_version:I

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "maxAge"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_name:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpCookie;->_value:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_comment:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_domain:Ljava/lang/String;

    .line 67
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_httpOnly:Z

    .line 68
    iput p3, p0, Lorg/eclipse/jetty/http/HttpCookie;->_maxAge:I

    .line 69
    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_path:Ljava/lang/String;

    .line 70
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_secure:Z

    .line 71
    iput v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_version:I

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_name:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpCookie;->_value:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_comment:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lorg/eclipse/jetty/http/HttpCookie;->_domain:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_httpOnly:Z

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_maxAge:I

    .line 53
    iput-object p4, p0, Lorg/eclipse/jetty/http/HttpCookie;->_path:Ljava/lang/String;

    .line 54
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_secure:Z

    .line 55
    iput v1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_version:I

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "maxAge"    # I
    .param p6, "httpOnly"    # Z
    .param p7, "secure"    # Z

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_comment:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lorg/eclipse/jetty/http/HttpCookie;->_domain:Ljava/lang/String;

    .line 80
    iput-boolean p6, p0, Lorg/eclipse/jetty/http/HttpCookie;->_httpOnly:Z

    .line 81
    iput p5, p0, Lorg/eclipse/jetty/http/HttpCookie;->_maxAge:I

    .line 82
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_name:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lorg/eclipse/jetty/http/HttpCookie;->_path:Ljava/lang/String;

    .line 84
    iput-boolean p7, p0, Lorg/eclipse/jetty/http/HttpCookie;->_secure:Z

    .line 85
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpCookie;->_value:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_version:I

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "maxAge"    # I
    .param p6, "httpOnly"    # Z
    .param p7, "secure"    # Z
    .param p8, "comment"    # Ljava/lang/String;
    .param p9, "version"    # I

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p8, p0, Lorg/eclipse/jetty/http/HttpCookie;->_comment:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lorg/eclipse/jetty/http/HttpCookie;->_domain:Ljava/lang/String;

    .line 95
    iput-boolean p6, p0, Lorg/eclipse/jetty/http/HttpCookie;->_httpOnly:Z

    .line 96
    iput p5, p0, Lorg/eclipse/jetty/http/HttpCookie;->_maxAge:I

    .line 97
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpCookie;->_name:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lorg/eclipse/jetty/http/HttpCookie;->_path:Ljava/lang/String;

    .line 99
    iput-boolean p7, p0, Lorg/eclipse/jetty/http/HttpCookie;->_secure:Z

    .line 100
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpCookie;->_value:Ljava/lang/String;

    .line 101
    iput p9, p0, Lorg/eclipse/jetty/http/HttpCookie;->_version:I

    .line 102
    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_comment:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_domain:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAge()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_maxAge:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_path:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_version:I

    return v0
.end method

.method public isHttpOnly()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_httpOnly:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpCookie;->_secure:Z

    return v0
.end method
