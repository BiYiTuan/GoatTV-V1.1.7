.class Lorg/eclipse/jetty/continuation/Servlet3Continuation$2;
.super Ljava/lang/Object;
.source "Servlet3Continuation.java"

# interfaces
.implements Ljavax/servlet/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/continuation/Servlet3Continuation;->addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/continuation/Servlet3Continuation;

.field final synthetic val$listener:Lorg/eclipse/jetty/continuation/ContinuationListener;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/continuation/Servlet3Continuation;Lorg/eclipse/jetty/continuation/ContinuationListener;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation$2;->this$0:Lorg/eclipse/jetty/continuation/Servlet3Continuation;

    iput-object p2, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation$2;->val$listener:Lorg/eclipse/jetty/continuation/ContinuationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljavax/servlet/AsyncEvent;)V
    .locals 2
    .param p1, "event"    # Ljavax/servlet/AsyncEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation$2;->val$listener:Lorg/eclipse/jetty/continuation/ContinuationListener;

    iget-object v1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation$2;->this$0:Lorg/eclipse/jetty/continuation/Servlet3Continuation;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onComplete(Lorg/eclipse/jetty/continuation/Continuation;)V

    .line 75
    return-void
.end method

.method public onError(Ljavax/servlet/AsyncEvent;)V
    .locals 2
    .param p1, "event"    # Ljavax/servlet/AsyncEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation$2;->val$listener:Lorg/eclipse/jetty/continuation/ContinuationListener;

    iget-object v1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation$2;->this$0:Lorg/eclipse/jetty/continuation/Servlet3Continuation;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onComplete(Lorg/eclipse/jetty/continuation/Continuation;)V

    .line 80
    return-void
.end method

.method public onStartAsync(Ljavax/servlet/AsyncEvent;)V
    .locals 1
    .param p1, "event"    # Ljavax/servlet/AsyncEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p1}, Ljavax/servlet/AsyncEvent;->getAsyncContext()Ljavax/servlet/AsyncContext;

    move-result-object v0

    invoke-interface {v0, p0}, Ljavax/servlet/AsyncContext;->addListener(Ljavax/servlet/AsyncListener;)V

    .line 85
    return-void
.end method

.method public onTimeout(Ljavax/servlet/AsyncEvent;)V
    .locals 2
    .param p1, "event"    # Ljavax/servlet/AsyncEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation$2;->this$0:Lorg/eclipse/jetty/continuation/Servlet3Continuation;

    const/4 v1, 0x1

    # setter for: Lorg/eclipse/jetty/continuation/Servlet3Continuation;->_expired:Z
    invoke-static {v0, v1}, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->access$102(Lorg/eclipse/jetty/continuation/Servlet3Continuation;Z)Z

    .line 90
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation$2;->val$listener:Lorg/eclipse/jetty/continuation/ContinuationListener;

    iget-object v1, p0, Lorg/eclipse/jetty/continuation/Servlet3Continuation$2;->this$0:Lorg/eclipse/jetty/continuation/Servlet3Continuation;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onTimeout(Lorg/eclipse/jetty/continuation/Continuation;)V

    .line 91
    return-void
.end method
