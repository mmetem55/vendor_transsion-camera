.class public Lcom/vskit/arsdk/utils/LogHelper;
.super Ljava/lang/Object;
.source "LogHelper.java"


# static fields
.field public static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 12
    sget-boolean v0, Lcom/vskit/arsdk/utils/LogHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 24
    sget-boolean v0, Lcom/vskit/arsdk/utils/LogHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 18
    sget-boolean v0, Lcom/vskit/arsdk/utils/LogHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
