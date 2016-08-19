.class public Lhdp/javabean/AppInfo$NetApp;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/javabean/AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetApp"
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public downloadurl:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public packagename:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
