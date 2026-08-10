.class public Lcom/transsion/camera/utils/MemoryUtils;
.super Ljava/lang/Object;
.source "MemoryUtils.java"


# static fields
.field private static mActivityManager:Landroid/app/ActivityManager;


# direct methods
.method private static format(J)Ljava/lang/String;
    .locals 3

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v1, 0x100000

    div-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "MB"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAvailMemory()Ljava/lang/String;
    .locals 2

    .line 16
    sget-object v0, Lcom/transsion/camera/utils/MemoryUtils;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 18
    sget-object v1, Lcom/transsion/camera/utils/MemoryUtils;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 19
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/MemoryUtils;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "0MB"

    return-object v0
.end method

.method public static getAvailableMemory()J
    .locals 4

    .line 31
    sget-object v0, Lcom/transsion/camera/utils/MemoryUtils;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 33
    sget-object v1, Lcom/transsion/camera/utils/MemoryUtils;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 34
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "activity"

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    sput-object p0, Lcom/transsion/camera/utils/MemoryUtils;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method
