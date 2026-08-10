.class public interface abstract Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
.super Ljava/lang/Object;
.source "ISettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/setting/ISettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SettingController"
.end annotation


# virtual methods
.method public abstract getCameraId()Ljava/lang/String;
.end method

.method public abstract getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;
.end method

.method public abstract getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;
.end method

.method public abstract getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;
.end method

.method public abstract getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;
.end method

.method public abstract getStreamIds()[I
.end method

.method public abstract isVipMode()Z
.end method

.method public abstract postDefaultRestriction(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V
.end method

.method public abstract queryEntryValues(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryExtStatus(Ljava/lang/String;)I
.end method

.method public abstract querySupportedPlatformValues(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract screenPocket()Z
.end method
