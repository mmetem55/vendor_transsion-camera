.class public Lcom/transsion/camera/utils/debug/LogHelper;
.super Ljava/lang/Object;
.source "LogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/debug/LogHelper$Singleton;
    }
.end annotation


# static fields
.field private static sPersistLogLevel:I = -0x1

.field private static sPropertyLogLevel:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/transsion/camera/utils/debug/LogHelper;->getPersistLevelFromProperty()I

    move-result p0

    sput p0, Lcom/transsion/camera/utils/debug/LogHelper;->sPersistLogLevel:I

    .line 39
    invoke-static {}, Lcom/transsion/camera/utils/debug/LogHelper;->getOverrideLevelFromProperty()I

    move-result p0

    sput p0, Lcom/transsion/camera/utils/debug/LogHelper;->sPropertyLogLevel:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/utils/debug/LogHelper$1;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/transsion/camera/utils/debug/LogHelper;-><init>()V

    return-void
.end method

.method private static convertToSystemLevel(I)I
    .locals 3

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x5

    return p0

    :cond_4
    const/4 p0, 0x6

    return p0
.end method

.method private static getOverrideLevelFromProperty()I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "debug.mtkcam.loglevel"

    .line 71
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CamAp_LogHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private static getPersistLevelFromProperty()I
    .locals 4

    const-string v0, "CamAp_LogHelper"

    const/4 v1, -0x1

    :try_start_0
    const-string v2, "persist.mtkcamapp.loglevel"

    .line 82
    invoke-static {v2, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 85
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPersistLevelFromProperty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static instance()Lcom/transsion/camera/utils/debug/LogHelper;
    .locals 1

    .line 33
    invoke-static {}, Lcom/transsion/camera/utils/debug/LogHelper$Singleton;->access$100()Lcom/transsion/camera/utils/debug/LogHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getOverrideLevel()I
    .locals 2

    .line 47
    sget p0, Lcom/transsion/camera/utils/debug/LogHelper;->sPropertyLogLevel:I

    const/4 v0, -0x1

    if-gt p0, v0, :cond_1

    sget v1, Lcom/transsion/camera/utils/debug/LogHelper;->sPersistLogLevel:I

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 59
    :cond_1
    :goto_0
    sget v0, Lcom/transsion/camera/utils/debug/LogHelper;->sPersistLogLevel:I

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Lcom/transsion/camera/utils/debug/LogHelper;->convertToSystemLevel(I)I

    move-result p0

    return p0
.end method
