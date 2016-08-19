.class public interface abstract Lorg/eclipse/jetty/server/AsyncContext;
.super Ljava/lang/Object;
.source "AsyncContext.java"


# static fields
.field public static final ASYNC_CONTEXT_PATH:Ljava/lang/String; = "javax.servlet.async.context_path"

.field public static final ASYNC_PATH_INFO:Ljava/lang/String; = "javax.servlet.async.path_info"

.field public static final ASYNC_QUERY_STRING:Ljava/lang/String; = "javax.servlet.async.query_string"

.field public static final ASYNC_REQUEST_URI:Ljava/lang/String; = "javax.servlet.async.request_uri"

.field public static final ASYNC_SERVLET_PATH:Ljava/lang/String; = "javax.servlet.async.servlet_path"


# virtual methods
.method public abstract addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V
.end method

.method public abstract complete()V
.end method

.method public abstract dispatch()V
.end method

.method public abstract dispatch(Ljava/lang/String;)V
.end method

.method public abstract dispatch(Ljavax/servlet/ServletContext;Ljava/lang/String;)V
.end method

.method public abstract getRequest()Ljavax/servlet/ServletRequest;
.end method

.method public abstract getResponse()Ljavax/servlet/ServletResponse;
.end method

.method public abstract hasOriginalRequestAndResponse()Z
.end method

.method public abstract setTimeout(J)V
.end method

.method public abstract start(Ljava/lang/Runnable;)V
.end method
