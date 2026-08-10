.class public Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;
.super Ljava/lang/Object;
.source "ScrollHelper.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleStoreStrategy"
.end annotation


# instance fields
.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private final mSettingKey:Ljava/lang/String;

.field private final mStoreScope:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;->mSettingKey:Ljava/lang/String;

    .line 52
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;->mStoreScope:Ljava/lang/String;

    .line 53
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method


# virtual methods
.method protected getStoreKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;->mSettingKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getStoreScope()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;->mStoreScope:Ljava/lang/String;

    return-object p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;->getStoreKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const-string v1, "0"

    .line 66
    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public saveValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;->getStoreKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
