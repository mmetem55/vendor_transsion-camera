.class public Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;
.super Ljava/lang/Object;
.source "SmartModeOrderUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils$LazyHolder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAllowSaveUsageTimes:Z

.field private mContext:Landroid/content/Context;

.field private final mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCurrentModeName:Ljava/lang/String;

.field private mFacing:I

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mAllowSaveUsageTimes:Z

    .line 22
    iput v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mFacing:I

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils$1;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;
    .locals 1

    .line 32
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils$LazyHolder;->access$100()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setFacing(I)V
    .locals 1

    .line 47
    iget v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mFacing:I

    if-eq v0, p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_0
    iput p1, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mFacing:I

    .line 52
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setModeName(Ljava/lang/String;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCurrentModeName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method public updateModeUsedCount()V
    .locals 4

    .line 60
    iget-boolean v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mAllowSaveUsageTimes:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCurrentModeName:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.photo.IntentPhotoModeEntry"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCurrentModeName:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.video.IntentVideoModeEntry"

    .line 63
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_preferences_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mFacing:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCurrentModeName:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2, p0, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateModeUsedCount] ignore the third party app use camera count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
