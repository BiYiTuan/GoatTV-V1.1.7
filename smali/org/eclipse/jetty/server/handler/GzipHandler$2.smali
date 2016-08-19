.class Lorg/eclipse/jetty/server/handler/GzipHandler$2;
.super Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;
.source "GzipHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/handler/GzipHandler;->newGzipResponseWrapper(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/handler/GzipHandler;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/handler/GzipHandler;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
    .param p2, "x0"    # Ljavax/servlet/http/HttpServletRequest;
    .param p3, "x1"    # Ljavax/servlet/http/HttpServletResponse;

    .prologue
    .line 282
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/GzipHandler$2;->this$0:Lorg/eclipse/jetty/server/handler/GzipHandler;

    invoke-direct {p0, p2, p3}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 284
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/GzipHandler$2;->this$0:Lorg/eclipse/jetty/server/handler/GzipHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_mimeTypes:Ljava/util/Set;

    invoke-super {p0, v0}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->setMimeTypes(Ljava/util/Set;)V

    .line 285
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/GzipHandler$2;->this$0:Lorg/eclipse/jetty/server/handler/GzipHandler;

    iget v0, v0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_bufferSize:I

    invoke-super {p0, v0}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->setBufferSize(I)V

    .line 286
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/GzipHandler$2;->this$0:Lorg/eclipse/jetty/server/handler/GzipHandler;

    iget v0, v0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_minGzipSize:I

    invoke-super {p0, v0}, Lorg/eclipse/jetty/http/gzip/GzipResponseWrapper;->setMinGzipSize(I)V

    .line 287
    return-void
.end method


# virtual methods
.method protected newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/GzipHandler$2;->this$0:Lorg/eclipse/jetty/server/handler/GzipHandler;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/server/handler/GzipHandler;->newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method
