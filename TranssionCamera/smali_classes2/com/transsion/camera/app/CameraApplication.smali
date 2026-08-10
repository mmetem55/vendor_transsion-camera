.class public Lcom/transsion/camera/app/CameraApplication;
.super Lcom/transsion/camera/app_info/BaseApplication;
.source "CameraApplication.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDataClearReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraApplication"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/app_info/BaseApplication;-><init>()V

    .line 89
    new-instance v0, Lcom/transsion/camera/app/CameraApplication$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/CameraApplication$1;-><init>(Lcom/transsion/camera/app/CameraApplication;)V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mDataClearReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)I
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/transsion/camera/app/CameraApplication;->getUid(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 44
    sget-object v0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/CameraApplication;Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraApplication;->cleanSharedPreference(Landroid/content/Context;)V

    return-void
.end method

.method private cleanSharedPreference(Landroid/content/Context;)V
    .locals 7

    .line 103
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/shared_prefs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v5, 0x4

    if-le v3, v5, :cond_0

    .line 108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v5

    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 110
    invoke-virtual {v4, v3, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 113
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 114
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    .line 116
    sget-object v4, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanSharedPreference: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getUid(Landroid/content/Context;)I
    .locals 2

    .line 126
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 128
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 130
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private registerPackageDataClear()V
    .locals 2

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "package"

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/transsion/camera/app/CameraApplication;->mDataClearReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .line 50
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050006

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 53
    sget-object v2, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraApplication onCreate. debugLogEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    invoke-static {v1}, Lcom/transsion/camera/utils/debug/Log;->setDebugLogEnable(Z)V

    .line 56
    :try_start_0
    invoke-static {}, Lcom/transsion/hubsdk/TranHubSdkManager;->getInstance()Lcom/transsion/hubsdk/TranHubSdkManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/hubsdk/TranHubSdkManager;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const-string v1, "onCreate"

    .line 58
    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/profiler/PerformanceTracker;->create(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->start()Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v1

    .line 59
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 60
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/adapter/CameraAgentFactory;->createCameraAgent(Landroid/content/Context;)V

    const v2, 0x7f050007

    .line 64
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "cache_classes"

    .line 65
    invoke-static {v2}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    const v2, 0x7f030024

    .line 66
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->cacheAllEntryClasses([Ljava/lang/String;)V

    const v2, 0x7f030020

    .line 67
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/app/common/provider/FeatureProvider;->cacheAllEntryClasses([Ljava/lang/String;)V

    const v2, 0x7f0300c9

    .line 68
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/ReflectionUtils;->cacheClasses([Ljava/lang/String;)Ljava/util/List;

    .line 69
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->registerPackageDataClear()V

    .line 73
    invoke-static {p0}, Lcom/transsion/camera/utils/BitmapUtils;->init(Landroid/content/Context;)V

    .line 74
    invoke-static {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->init(Landroid/content/Context;)V

    .line 75
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->setContext(Landroid/content/Context;)V

    .line 76
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->createInstance()V

    .line 77
    invoke-static {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->createInstance(Landroid/content/Context;)V

    .line 78
    invoke-static {p0}, Lcom/transsion/camera/utils/MemoryUtils;->init(Landroid/content/Context;)V

    .line 79
    invoke-interface {v1}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method
