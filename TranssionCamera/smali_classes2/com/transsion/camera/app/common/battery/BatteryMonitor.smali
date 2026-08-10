.class public Lcom/transsion/camera/app/common/battery/BatteryMonitor;
.super Ljava/lang/Object;
.source "BatteryMonitor.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBatteryListener:Lcom/transsion/camera/app/common/battery/IBatteryListener;

.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentStatus:I

.field private mCurrentTemperatureStatus:I

.field private mIsReceiverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BatteryMonitor"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mIsReceiverRegistered:Z

    .line 29
    iput v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mCurrentStatus:I

    .line 30
    iput v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mCurrentTemperatureStatus:I

    .line 85
    new-instance v0, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;-><init>(Lcom/transsion/camera/app/common/battery/BatteryMonitor;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 22
    sget-object v0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/battery/BatteryMonitor;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mCurrentStatus:I

    return p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/app/common/battery/BatteryMonitor;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mCurrentStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/battery/BatteryMonitor;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mCurrentTemperatureStatus:I

    return p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/app/common/battery/BatteryMonitor;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mCurrentTemperatureStatus:I

    return p1
.end method

.method static synthetic access$300(I)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->statusToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/battery/BatteryMonitor;)Lcom/transsion/camera/app/common/battery/IBatteryListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mBatteryListener:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    return-object p0
.end method

.method private static statusToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN BATTERY STATE ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "low_power"

    return-object p0

    :cond_1
    const-string p0, "idle"

    return-object p0

    :cond_2
    const-string p0, "unknown"

    return-object p0
.end method

.method private updateCurrentBatteryIsLow()V
    .locals 5

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mContext:Landroid/content/Context;

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const/4 v1, 0x4

    .line 75
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    const/4 v2, 0x6

    .line 76
    invoke-virtual {v0, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    .line 77
    sget-object v2, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Battery Capacity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", batteryStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    int-to-float v1, v1

    const v3, 0x417028f5    # 15.009999f

    cmpg-float v1, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-gez v1, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v4

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mBatteryListener:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v0, "Battery Capacity is Low "

    .line 80
    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mBatteryListener:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    invoke-interface {p0, v4, v3, v4}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    :cond_1
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setBatteryListener(Lcom/transsion/camera/app/common/battery/IBatteryListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mBatteryListener:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    return-void
.end method

.method public start()V
    .locals 3

    .line 39
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mCurrentTemperatureStatus:I

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->updateCurrentBatteryIsLow()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mIsReceiverRegistered:Z

    return-void
.end method

.method public stop()V
    .locals 3

    .line 53
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mIsReceiverRegistered:Z

    .line 55
    iget-object v1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 56
    iget-object v1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mBatteryListener:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    if-eqz v1, :cond_0

    .line 57
    invoke-interface {v1, v0, v0, v0}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    .line 60
    :cond_0
    iput v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mCurrentStatus:I

    :cond_1
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->stop()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->mContext:Landroid/content/Context;

    return-void
.end method
