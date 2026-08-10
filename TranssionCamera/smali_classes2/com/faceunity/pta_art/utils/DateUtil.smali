.class public abstract Lcom/faceunity/pta_art/utils/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# direct methods
.method public static getCurrentDate()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
