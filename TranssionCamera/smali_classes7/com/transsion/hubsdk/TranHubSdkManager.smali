.class public Lcom/transsion/hubsdk/TranHubSdkManager;
.super Ljava/lang/Object;
.source "TranHubSdkManager.java"


# static fields
.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/transsion/hubsdk/TranHubSdkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 33
    sget-object v0, Lcom/transsion/hubsdk/TranHubSdkManager;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/transsion/hubsdk/TranHubSdkManager;
    .locals 1

    .line 20
    sget-object v0, Lcom/transsion/hubsdk/TranHubSdkManager;->sInstance:Lcom/transsion/hubsdk/TranHubSdkManager;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/transsion/hubsdk/TranHubSdkManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/TranHubSdkManager;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/TranHubSdkManager;->sInstance:Lcom/transsion/hubsdk/TranHubSdkManager;

    .line 23
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/TranHubSdkManager;->sInstance:Lcom/transsion/hubsdk/TranHubSdkManager;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/transsion/hubsdk/TranHubSdkManager;->sContext:Landroid/content/Context;

    .line 28
    invoke-static {p0}, Lcom/transsion/hubsdk/api/verifykey/TranVerifyKeyManager;->verify(Landroid/content/Context;)I

    const/4 p0, 0x0

    .line 29
    invoke-static {p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->setLogLevel(I)I

    return-void
.end method
