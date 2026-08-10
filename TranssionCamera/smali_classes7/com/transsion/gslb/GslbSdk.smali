.class public Lcom/transsion/gslb/GslbSdk;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/gslb/GslbSdk$InitListener;
    }
.end annotation


# static fields
.field public static volatile gs1:Lgs1/gs1/gs1/gs6;

.field public static gs2:Landroid/content/Context;

.field public static gs3:Ljava/lang/String;

.field public static gs4:Ljava/lang/String;


# direct methods
.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/gslb/GslbSdk;->gs4:Ljava/lang/String;

    return-object v0
.end method

.method public static getDomain(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/gslb/GslbSdk;->gs1:Lgs1/gs1/gs1/gs6;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "GslbSdk is not initialized"

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    return-object p0

    .line 5
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p1, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "url is empty"

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    return-object p0

    .line 10
    :cond_1
    invoke-static {p0}, Lgs1/gs1/gs1/gs5;->gs1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {}, Lgs1/gs1/gs1/gs1;->gs6()Lgs1/gs1/gs1/gs1;

    move-result-object v1

    .line 12
    iget-object v2, v1, Lgs1/gs1/gs1/gs1;->gs2:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 14
    invoke-virtual {v1}, Lgs1/gs1/gs1/gs1;->gs1()V

    if-eqz v2, :cond_3

    const-string v1, "blank"

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    .line 27
    sget-object v1, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not in init list "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->w(Ljava/lang/Object;)V

    :cond_4
    if-eqz p1, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMcc()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/gslb/GslbSdk;->gs3:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/transsion/gslb/GslbSdk;->gs2:Landroid/content/Context;

    .line 2
    sget-object p0, Lcom/transsion/gslb/GslbSdk;->gs1:Lgs1/gs1/gs1/gs6;

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lgs1/gs1/gs1/gs6;->gs4()Lgs1/gs1/gs1/gs6;

    move-result-object p0

    sput-object p0, Lcom/transsion/gslb/GslbSdk;->gs1:Lgs1/gs1/gs1/gs6;

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    array-length p0, p1

    if-lez p0, :cond_1

    .line 6
    sget-object p0, Lcom/transsion/gslb/GslbSdk;->gs1:Lgs1/gs1/gs1/gs6;

    new-instance v0, Lgs1/gs1/gs1/gs3;

    invoke-direct {v0, p1, p2}, Lgs1/gs1/gs1/gs3;-><init>([Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V

    invoke-virtual {p0, v0}, Lgs1/gs1/gs1/gs6;->gs1(Lgs1/gs1/gs1/gs3;)V

    goto :goto_0

    :cond_1
    const-string p0, "GslbSdk"

    const-string p1, "Init with invalid domains"

    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static isInitSuccess(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/gslb/GslbSdk;->gs1:Lgs1/gs1/gs1/gs6;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "GslbSdk is not initialized"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    return v1

    :cond_0
    if-eqz p0, :cond_1

    .line 7
    invoke-static {p0, v1}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    return v1
.end method
