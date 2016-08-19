.class public Lhdp/javabean/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/javabean/AppInfo$AppItem;,
        Lhdp/javabean/AppInfo$NetApp;
    }
.end annotation


# instance fields
.field public apps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/AppInfo$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public info:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
