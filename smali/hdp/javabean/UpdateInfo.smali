.class public Lhdp/javabean/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/javabean/UpdateInfo$Plugin;,
        Lhdp/javabean/UpdateInfo$ShareUid;
    }
.end annotation


# instance fields
.field public apkurl:Ljava/lang/String;

.field public appname:Ljava/lang/String;

.field public channelpush:I

.field public exitpicaddr:Ljava/lang/String;

.field public exitpicmd5:Ljava/lang/String;

.field public exitpicurl:Ljava/lang/String;

.field public picaddr:Ljava/lang/String;

.field public picmd5:Ljava/lang/String;

.field public plugin_new:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/UpdateInfo$Plugin;",
            ">;"
        }
    .end annotation
.end field

.field public recommendapp:Lhdp/javabean/AppInfo$NetApp;

.field public txt:Ljava/lang/String;

.field public txtime:I

.field public verCode:I

.field public verName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
