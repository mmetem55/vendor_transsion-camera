.class public Lcom/unity3d/splash/services/core/log/DeviceLogLevel;
.super Ljava/lang/Object;


# instance fields
.field private _receivingMethodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/splash/services/core/log/DeviceLogLevel;->_receivingMethodName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "UnityAds"

    return-object p0
.end method

.method public getReceivingMethodName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/splash/services/core/log/DeviceLogLevel;->_receivingMethodName:Ljava/lang/String;

    return-object p0
.end method
