.class public Lorg/videolan/vlc/util/VLCInstance;
.super Ljava/lang/Object;
.source "VLCInstance.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/Util/VLCInstance"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLibVlcInstance()Lorg/videolan/libvlc/LibVLC;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/videolan/libvlc/LibVlcException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Lorg/videolan/libvlc/LibVLC;->getExistingInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v1

    .line 38
    .local v1, "instance":Lorg/videolan/libvlc/LibVLC;
    if-nez v1, :cond_0

    .line 41
    invoke-static {}, Lorg/videolan/libvlc/LibVLC;->getInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v1

    .line 42
    sget-object v0, Lhdp/http/MyApp;->mContext:Landroid/content/Context;

    .line 43
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 44
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-static {v2}, Lorg/videolan/vlc/util/VLCInstance;->updateLibVlcSettings(Landroid/content/SharedPreferences;)V

    .line 45
    invoke-virtual {v1, v0}, Lorg/videolan/libvlc/LibVLC;->init(Landroid/content/Context;)V

    .line 46
    new-instance v3, Lorg/videolan/vlc/util/VLCInstance$1;

    invoke-direct {v3}, Lorg/videolan/vlc/util/VLCInstance$1;-><init>()V

    invoke-virtual {v1, v3}, Lorg/videolan/libvlc/LibVLC;->setOnNativeCrashListener(Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;)V

    .line 58
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    return-object v1
.end method

.method public static updateLibVlcSettings(Landroid/content/SharedPreferences;)V
    .locals 10
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v9, 0x0

    .line 62
    invoke-static {}, Lorg/videolan/libvlc/LibVLC;->getExistingInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v3

    .line 63
    .local v3, "instance":Lorg/videolan/libvlc/LibVLC;
    if-nez v3, :cond_0

    .line 115
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v7, "subtitle_text_encoding"

    const-string v8, ""

    invoke-interface {p0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/videolan/libvlc/LibVLC;->setSubtitlesEncoding(Ljava/lang/String;)V

    .line 67
    const-string v7, "enable_time_stretching_audio"

    invoke-interface {p0, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v3, v7}, Lorg/videolan/libvlc/LibVLC;->setTimeStretching(Z)V

    .line 68
    const-string v7, "enable_frame_skip"

    invoke-interface {p0, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v3, v7}, Lorg/videolan/libvlc/LibVLC;->setFrameSkip(Z)V

    .line 69
    const-string v7, "chroma_format"

    const-string v8, ""

    invoke-interface {p0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/videolan/libvlc/LibVLC;->setChroma(Ljava/lang/String;)V

    .line 70
    const-string v7, "enable_verbose_mode"

    const/4 v8, 0x1

    invoke-interface {p0, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v3, v7}, Lorg/videolan/libvlc/LibVLC;->setVerboseMode(Z)V

    .line 72
    const-string v7, "equalizer_enabled"

    invoke-interface {p0, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 73
    const-string v7, "equalizer_values"

    invoke-static {p0, v7}, Lhdp/http/MyApp;->getFloatArray(Landroid/content/SharedPreferences;Ljava/lang/String;)[F

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/videolan/libvlc/LibVLC;->setEqualizer([F)V

    .line 77
    :cond_1
    :try_start_0
    const-string v7, "aout"

    const-string v8, "-1"

    invoke-interface {p0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 84
    .local v0, "aout":I
    :goto_1
    :try_start_1
    const-string v7, "vout"

    const-string v8, "-1"

    invoke-interface {p0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 91
    .local v6, "vout":I
    :goto_2
    :try_start_2
    const-string v7, "deblocking"

    const-string v8, "-1"

    invoke-interface {p0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    .line 98
    .local v1, "deblocking":I
    :goto_3
    :try_start_3
    const-string v7, "hardware_acceleration"

    const-string v8, "-1"

    invoke-interface {p0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    .line 103
    .local v2, "hardwareAcceleration":I
    :goto_4
    const-string v7, "network_caching_value"

    invoke-interface {p0, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 104
    .local v4, "networkCaching":I
    const v7, 0xea60

    if-le v4, v7, :cond_3

    .line 105
    const v4, 0xea60

    .line 109
    :cond_2
    :goto_5
    const-string v7, "connor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v3, v0}, Lorg/videolan/libvlc/LibVLC;->setAout(I)V

    .line 111
    invoke-virtual {v3, v6}, Lorg/videolan/libvlc/LibVLC;->setVout(I)V

    .line 112
    invoke-virtual {v3, v1}, Lorg/videolan/libvlc/LibVLC;->setDeblocking(I)V

    .line 113
    invoke-virtual {v3, v4}, Lorg/videolan/libvlc/LibVLC;->setNetworkCaching(I)V

    .line 114
    invoke-virtual {v3, v2}, Lorg/videolan/libvlc/LibVLC;->setHardwareAcceleration(I)V

    goto/16 :goto_0

    .line 79
    .end local v0    # "aout":I
    .end local v1    # "deblocking":I
    .end local v2    # "hardwareAcceleration":I
    .end local v4    # "networkCaching":I
    .end local v6    # "vout":I
    :catch_0
    move-exception v5

    .line 80
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    const/4 v0, -0x1

    .restart local v0    # "aout":I
    goto :goto_1

    .line 86
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v5

    .line 87
    .restart local v5    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v6, -0x1

    .restart local v6    # "vout":I
    goto :goto_2

    .line 93
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v5

    .line 94
    .restart local v5    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    .restart local v1    # "deblocking":I
    goto :goto_3

    .line 100
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v5

    .line 101
    .restart local v5    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    .restart local v2    # "hardwareAcceleration":I
    goto :goto_4

    .line 106
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v4    # "networkCaching":I
    :cond_3
    if-gez v4, :cond_2

    .line 107
    const/4 v4, 0x0

    goto :goto_5
.end method
