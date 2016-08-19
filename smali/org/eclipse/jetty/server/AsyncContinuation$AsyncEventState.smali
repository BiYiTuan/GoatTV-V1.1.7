.class public Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;
.super Lorg/eclipse/jetty/util/thread/Timeout$Task;
.source "AsyncContinuation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/AsyncContinuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncEventState"
.end annotation


# instance fields
.field private _dispatchContext:Ljavax/servlet/ServletContext;

.field private _path:Ljava/lang/String;

.field private final _request:Ljavax/servlet/ServletRequest;

.field private final _response:Ljavax/servlet/ServletResponse;

.field private final _suspendedContext:Ljavax/servlet/ServletContext;

.field final synthetic this$0:Lorg/eclipse/jetty/server/AsyncContinuation;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/AsyncContinuation;Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 0
    .param p2, "context"    # Ljavax/servlet/ServletContext;
    .param p3, "request"    # Ljavax/servlet/ServletRequest;
    .param p4, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 898
    iput-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->this$0:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-direct {p0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;-><init>()V

    .line 899
    iput-object p2, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_suspendedContext:Ljavax/servlet/ServletContext;

    .line 900
    iput-object p3, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_request:Ljavax/servlet/ServletRequest;

    .line 901
    iput-object p4, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_response:Ljavax/servlet/ServletResponse;

    .line 902
    return-void
.end method

.method static synthetic access$002(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljavax/servlet/ServletContext;)Ljavax/servlet/ServletContext;
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;
    .param p1, "x1"    # Ljavax/servlet/ServletContext;

    .prologue
    .line 889
    iput-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_dispatchContext:Ljavax/servlet/ServletContext;

    return-object p1
.end method

.method static synthetic access$102(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 889
    iput-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_path:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public expired()V
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->this$0:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->expired()V

    .line 938
    return-void
.end method

.method public getDispatchContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_dispatchContext:Ljavax/servlet/ServletContext;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_path:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Ljavax/servlet/ServletRequest;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_request:Ljavax/servlet/ServletRequest;

    return-object v0
.end method

.method public getResponse()Ljavax/servlet/ServletResponse;
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_response:Ljavax/servlet/ServletResponse;

    return-object v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_dispatchContext:Ljavax/servlet/ServletContext;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_suspendedContext:Ljavax/servlet/ServletContext;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_dispatchContext:Ljavax/servlet/ServletContext;

    goto :goto_0
.end method

.method public getSuspendedContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_suspendedContext:Ljavax/servlet/ServletContext;

    return-object v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->this$0:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->expired()V

    .line 943
    return-void
.end method
