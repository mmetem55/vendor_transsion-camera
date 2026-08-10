.class public final Lcom/transsion/camera/utils/analytics/storage/FaceInfo;
.super Ljava/lang/Object;
.source "FaceInfo.java"


# direct methods
.method public static currentDayHasMaxDetectNumber(Landroid/content/Context;)Z
    .locals 2

    .line 25
    invoke-static {p0}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->getFaceInfoTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->isCurrentDay(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->getFaceInfoNumber(Landroid/content/Context;)I

    move-result p0

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static getFaceInfoNumber(Landroid/content/Context;)I
    .locals 2

    const-string v0, "faceinfo"

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "facenumber"

    .line 49
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getFaceInfoTime(Landroid/content/Context;)J
    .locals 3

    const-string v0, "faceinfo"

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "facetime"

    const-wide/16 v1, 0x0

    .line 37
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static isCurrentDay(J)Z
    .locals 6

    .line 53
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 54
    new-instance p0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 56
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 58
    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 59
    invoke-virtual {p1, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xe

    .line 60
    invoke-virtual {p1, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 63
    invoke-virtual {v5, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 64
    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 65
    invoke-virtual {v5, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 66
    invoke-virtual {v5, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 67
    invoke-virtual {v5, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 68
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr v2, p0

    long-to-int p0, v2

    const p1, 0x5265c00

    div-int/2addr p0, p1

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static setFaceInfoNumber(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "faceinfo"

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 42
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "facenumber"

    .line 43
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static setFaceInfoTime(Landroid/content/Context;J)V
    .locals 2

    const-string v0, "faceinfo"

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 30
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "facetime"

    .line 31
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 32
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static updateFaceInfo(Landroid/content/Context;)V
    .locals 2

    .line 16
    invoke-static {p0}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->getFaceInfoTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->isCurrentDay(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 17
    invoke-static {p0}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->getFaceInfoNumber(Landroid/content/Context;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->setFaceInfoNumber(Landroid/content/Context;I)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p0, v1}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->setFaceInfoNumber(Landroid/content/Context;I)V

    .line 21
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->setFaceInfoTime(Landroid/content/Context;J)V

    return-void
.end method
