.class public Lorg/eclipse/jetty/http/HttpException;
.super Ljava/io/IOException;
.source "HttpException.java"


# instance fields
.field _reason:Ljava/lang/String;

.field _status:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 26
    iput p1, p0, Lorg/eclipse/jetty/http/HttpException;->_status:I

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpException;->_reason:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 33
    iput p1, p0, Lorg/eclipse/jetty/http/HttpException;->_status:I

    .line 34
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpException;->_reason:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "rootCause"    # Ljava/lang/Throwable;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 40
    iput p1, p0, Lorg/eclipse/jetty/http/HttpException;->_status:I

    .line 41
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpException;->_reason:Ljava/lang/String;

    .line 42
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/http/HttpException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 43
    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpException;->_reason:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/eclipse/jetty/http/HttpException;->_status:I

    return v0
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpException;->_reason:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 78
    iput p1, p0, Lorg/eclipse/jetty/http/HttpException;->_status:I

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpException("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/http/HttpException;->_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpException;->_reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
