.class public Lcom/transsion/secondaryhome/BackManager;
.super Ljava/lang/Object;
.source "BackManager.java"


# annotations
.annotation runtime Lcom/transsion/secondaryhome/common/KolunKeep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/secondaryhome/BackManager;
    .locals 2

    const-string v0, "kolun_secondaryHome_sdk"

    const-string v1, "BackManager.getInstance() method Local direct call is not supported!!!"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public backToHome()V
    .locals 1

    const-string p0, "kolun_secondaryHome_sdk"

    const-string v0, "BackManager.backToHome() method Local direct call is not supported!!!"

    .line 18
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
