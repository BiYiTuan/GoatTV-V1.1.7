.class public Lhdp/adapter/LocalAppInfo;
.super Ljava/lang/Object;
.source "LocalAppInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x67c85882a4ecef37L


# instance fields
.field public appName:Ljava/lang/String;

.field public firstInstallTime:J

.field public icon:Landroid/graphics/drawable/Drawable;

.field public isUserApp:Z

.field public length:J

.field public packageName:Ljava/lang/String;

.field public requestedPermissions:[Ljava/lang/String;

.field public vercode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lhdp/adapter/LocalAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 47
    iput-object p2, p0, Lhdp/adapter/LocalAppInfo;->appName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZI)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "versionName"    # Ljava/lang/String;
    .param p5, "firstInstallTime"    # J
    .param p7, "isUserApp"    # Z
    .param p8, "vercode"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lhdp/adapter/LocalAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 36
    iput-object p2, p0, Lhdp/adapter/LocalAppInfo;->appName:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lhdp/adapter/LocalAppInfo;->packageName:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lhdp/adapter/LocalAppInfo;->versionName:Ljava/lang/String;

    .line 39
    iput-wide p5, p0, Lhdp/adapter/LocalAppInfo;->firstInstallTime:J

    .line 40
    iput-boolean p7, p0, Lhdp/adapter/LocalAppInfo;->isUserApp:Z

    .line 41
    iput p8, p0, Lhdp/adapter/LocalAppInfo;->vercode:I

    .line 42
    return-void
.end method
