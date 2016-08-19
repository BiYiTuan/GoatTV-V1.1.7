.class public final enum Lhdp/util/FileUtils$PathStatus;
.super Ljava/lang/Enum;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/util/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PathStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhdp/util/FileUtils$PathStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lhdp/util/FileUtils$PathStatus;

.field public static final enum ERROR:Lhdp/util/FileUtils$PathStatus;

.field public static final enum EXITS:Lhdp/util/FileUtils$PathStatus;

.field public static final enum SUCCESS:Lhdp/util/FileUtils$PathStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 532
    new-instance v0, Lhdp/util/FileUtils$PathStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lhdp/util/FileUtils$PathStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhdp/util/FileUtils$PathStatus;->SUCCESS:Lhdp/util/FileUtils$PathStatus;

    new-instance v0, Lhdp/util/FileUtils$PathStatus;

    const-string v1, "EXITS"

    invoke-direct {v0, v1, v3}, Lhdp/util/FileUtils$PathStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhdp/util/FileUtils$PathStatus;->EXITS:Lhdp/util/FileUtils$PathStatus;

    new-instance v0, Lhdp/util/FileUtils$PathStatus;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lhdp/util/FileUtils$PathStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhdp/util/FileUtils$PathStatus;->ERROR:Lhdp/util/FileUtils$PathStatus;

    .line 531
    const/4 v0, 0x3

    new-array v0, v0, [Lhdp/util/FileUtils$PathStatus;

    sget-object v1, Lhdp/util/FileUtils$PathStatus;->SUCCESS:Lhdp/util/FileUtils$PathStatus;

    aput-object v1, v0, v2

    sget-object v1, Lhdp/util/FileUtils$PathStatus;->EXITS:Lhdp/util/FileUtils$PathStatus;

    aput-object v1, v0, v3

    sget-object v1, Lhdp/util/FileUtils$PathStatus;->ERROR:Lhdp/util/FileUtils$PathStatus;

    aput-object v1, v0, v4

    sput-object v0, Lhdp/util/FileUtils$PathStatus;->ENUM$VALUES:[Lhdp/util/FileUtils$PathStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhdp/util/FileUtils$PathStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lhdp/util/FileUtils$PathStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhdp/util/FileUtils$PathStatus;

    return-object v0
.end method

.method public static values()[Lhdp/util/FileUtils$PathStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lhdp/util/FileUtils$PathStatus;->ENUM$VALUES:[Lhdp/util/FileUtils$PathStatus;

    array-length v1, v0

    new-array v2, v1, [Lhdp/util/FileUtils$PathStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
