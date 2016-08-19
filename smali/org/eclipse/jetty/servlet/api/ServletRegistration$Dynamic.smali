.class public interface abstract Lorg/eclipse/jetty/servlet/api/ServletRegistration$Dynamic;
.super Ljava/lang/Object;
.source "ServletRegistration.java"

# interfaces
.implements Lorg/eclipse/jetty/servlet/api/ServletRegistration;
.implements Lorg/eclipse/jetty/servlet/api/Registration$Dynamic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/api/ServletRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Dynamic"
.end annotation


# virtual methods
.method public abstract setLoadOnStartup(I)V
.end method

.method public abstract setRunAsRole(Ljava/lang/String;)V
.end method
