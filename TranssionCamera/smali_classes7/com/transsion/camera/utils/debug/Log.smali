.class public Lcom/transsion/camera/utils/debug/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/debug/Log$Tag;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sDebugLogEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Log"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/debug/Log;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    .line 26
    sput-boolean v0, Lcom/transsion/camera/utils/debug/Log;->sDebugLogEnable:Z

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 14
    sget-object v0, Lcom/transsion/camera/utils/debug/Log;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method public static d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 75
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->isLoggable(Lcom/transsion/camera/utils/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p3}, Lcom/transsion/camera/utils/debug/LogUtil;->addTags(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 63
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->isLoggable(Lcom/transsion/camera/utils/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x3

    .line 81
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->isLoggable(Lcom/transsion/camera/utils/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 93
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->isLoggable(Lcom/transsion/camera/utils/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/LogUtil;->addTags(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 87
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->isLoggable(Lcom/transsion/camera/utils/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x6

    .line 105
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->isLoggable(Lcom/transsion/camera/utils/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 111
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->isLoggable(Lcom/transsion/camera/utils/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x4

    .line 129
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->isLoggable(Lcom/transsion/camera/utils/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private static isDebugOsBuild()Z
    .locals 2

    .line 206
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isLoggable(Lcom/transsion/camera/utils/debug/Log$Tag;I)Z
    .locals 3

    .line 183
    sget-boolean v0, Lcom/transsion/camera/utils/debug/Log;->sDebugLogEnable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 187
    :try_start_0
    invoke-static {}, Lcom/transsion/camera/utils/debug/LogHelper;->instance()Lcom/transsion/camera/utils/debug/LogHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/utils/debug/LogHelper;->getOverrideLevel()I

    move-result v2

    if-eqz v2, :cond_2

    if-gt v2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1

    .line 191
    :cond_2
    invoke-static {}, Lcom/transsion/camera/utils/debug/Log;->isDebugOsBuild()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->shouldLog(Lcom/transsion/camera/utils/debug/Log$Tag;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    :cond_4
    :goto_1
    return v1

    .line 194
    :catch_0
    sget-object p1, Lcom/transsion/camera/utils/debug/Log;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag too long:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public static setDebugLogEnable(Z)V
    .locals 0

    .line 59
    sput-boolean p0, Lcom/transsion/camera/utils/debug/Log;->sDebugLogEnable:Z

    return-void
.end method

.method private static shouldLog(Lcom/transsion/camera/utils/debug/Log$Tag;I)Z
    .locals 1

    const-string v0, "CamAp_"

    .line 201
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

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

.method public static v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 135
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->isLoggable(Lcom/transsion/camera/utils/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 159
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->isLoggable(Lcom/transsion/camera/utils/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x5

    .line 177
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->isLoggable(Lcom/transsion/camera/utils/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
