.class public Lorg/eclipse/jetty/util/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "checkParents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/net/URL;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, "loadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, "url":Ljava/net/URL;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 45
    .local v0, "loader":Ljava/lang/ClassLoader;
    :goto_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 48
    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_1
    goto :goto_0

    :cond_0
    move-object v0, v2

    goto :goto_1

    .line 51
    :cond_1
    if-nez p0, :cond_2

    move-object v0, v2

    .line 52
    :goto_2
    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 55
    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_3
    goto :goto_2

    .line 51
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 55
    goto :goto_3

    .line 58
    :cond_4
    if-nez v1, :cond_5

    .line 60
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 63
    :cond_5
    return-object v1
.end method

.method public static getResourceBundle(Ljava/lang/Class;Ljava/lang/String;ZLjava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "checkParents"    # Z
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .local p0, "loadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 119
    const/4 v2, 0x0

    .line 120
    .local v2, "ex":Ljava/util/MissingResourceException;
    const/4 v0, 0x0

    .line 121
    .local v0, "bundle":Ljava/util/ResourceBundle;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 122
    .local v3, "loader":Ljava/lang/ClassLoader;
    :goto_0
    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    .line 124
    :try_start_0
    invoke-static {p1, p3, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 126
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v3

    :goto_2
    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/util/MissingResourceException;
    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_1

    .end local v1    # "e":Ljava/util/MissingResourceException;
    :cond_1
    move-object v3, v4

    .line 126
    goto :goto_2

    .line 129
    :cond_2
    if-nez p0, :cond_4

    move-object v3, v4

    .line 130
    :goto_3
    if-nez v0, :cond_6

    if-eqz v3, :cond_6

    .line 132
    :try_start_1
    invoke-static {p1, p3, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 134
    :cond_3
    :goto_4
    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v3

    :goto_5
    goto :goto_3

    .line 129
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    goto :goto_3

    .line 133
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/util/MissingResourceException;
    if-nez v2, :cond_3

    move-object v2, v1

    goto :goto_4

    .end local v1    # "e":Ljava/util/MissingResourceException;
    :cond_5
    move-object v3, v4

    .line 134
    goto :goto_5

    .line 137
    :cond_6
    if-nez v0, :cond_7

    .line 139
    :try_start_2
    invoke-static {p1, p3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 143
    :cond_7
    :goto_6
    if-eqz v0, :cond_8

    .line 144
    return-object v0

    .line 140
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/util/MissingResourceException;
    if-nez v2, :cond_7

    move-object v2, v1

    goto :goto_6

    .line 145
    .end local v1    # "e":Ljava/util/MissingResourceException;
    :cond_8
    throw v2
.end method

.method public static loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "loadClass"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static loadClass(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 6
    .param p0, "loadClass"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "checkParents"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 87
    const/4 v2, 0x0

    .line 88
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    const/4 v0, 0x0

    .line 89
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 90
    .local v3, "loader":Ljava/lang/ClassLoader;
    :goto_0
    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    .line 92
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 94
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v3

    :goto_2
    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/ClassNotFoundException;
    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_1

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    move-object v3, v4

    .line 94
    goto :goto_2

    .line 97
    :cond_2
    if-nez p0, :cond_4

    move-object v3, v4

    .line 98
    :goto_3
    if-nez v0, :cond_6

    if-eqz v3, :cond_6

    .line 100
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 102
    :cond_3
    :goto_4
    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v3

    :goto_5
    goto :goto_3

    .line 97
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    goto :goto_3

    .line 101
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/ClassNotFoundException;
    if-nez v2, :cond_3

    move-object v2, v1

    goto :goto_4

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_5
    move-object v3, v4

    .line 102
    goto :goto_5

    .line 105
    :cond_6
    if-nez v0, :cond_7

    .line 107
    :try_start_2
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 111
    :cond_7
    :goto_6
    if-eqz v0, :cond_8

    .line 112
    return-object v0

    .line 108
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/ClassNotFoundException;
    if-nez v2, :cond_7

    move-object v2, v1

    goto :goto_6

    .line 113
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_8
    throw v2
.end method
