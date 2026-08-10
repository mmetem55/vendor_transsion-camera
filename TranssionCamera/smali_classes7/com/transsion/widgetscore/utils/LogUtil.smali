.class public Lcom/transsion/widgetscore/utils/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# direct methods
.method private static concat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p0, :cond_0

    .line 254
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const-string p0, "_"

    .line 257
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 259
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    if-eqz p2, :cond_7

    if-nez p3, :cond_3

    goto :goto_2

    .line 265
    :cond_3
    array-length p0, p2

    array-length p1, p3

    if-ne p0, p1, :cond_6

    const-string p0, " { "

    .line 269
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    array-length p0, p2

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p0, :cond_5

    if-lez p1, :cond_4

    const-string v1, ","

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_4
    aget-object v1, p2, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p3, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    const-string p0, " }"

    .line 277
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 266
    :cond_6
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "Length of names and values array is not equal"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 263
    :cond_7
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 181
    invoke-static {p0, p1, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 191
    invoke-static {p0, p1, v0, v0, p2}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x3

    .line 204
    invoke-static {v0}, Lcom/transsion/widgetscore/utils/LogUtil;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetscore/utils/LogUtil;->concat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "os_widgets"

    invoke-static {p1, p0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-static {p0, p1, v0, v0, p2}, Lcom/transsion/widgetscore/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x6

    .line 76
    invoke-static {v0}, Lcom/transsion/widgetscore/utils/LogUtil;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetscore/utils/LogUtil;->concat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "os_widgets"

    invoke-static {p1, p0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-static {p0, p1, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-static {p0, p1, v0, v0, p2}, Lcom/transsion/widgetscore/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x4

    .line 161
    invoke-static {v0}, Lcom/transsion/widgetscore/utils/LogUtil;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetscore/utils/LogUtil;->concat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "os_widgets"

    invoke-static {p1, p0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private static isDebugOsBuild()Z
    .locals 2

    .line 36
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private static isLoggable(I)Z
    .locals 1

    .line 32
    invoke-static {}, Lcom/transsion/widgetscore/utils/LogUtil;->isDebugOsBuild()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "os_widgets"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 214
    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-static {p0, p1, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 232
    invoke-static {p0, p1, v0, v0, p2}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x2

    .line 245
    invoke-static {v0}, Lcom/transsion/widgetscore/utils/LogUtil;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetscore/utils/LogUtil;->concat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "os_widgets"

    invoke-static {p1, p0, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-static {p0, p1, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p2, 0x0

    .line 106
    invoke-static {p0, p1, p2, p2, p2}, Lcom/transsion/widgetscore/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x5

    .line 118
    invoke-static {v0}, Lcom/transsion/widgetscore/utils/LogUtil;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetscore/utils/LogUtil;->concat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "os_widgets"

    invoke-static {p1, p0, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
