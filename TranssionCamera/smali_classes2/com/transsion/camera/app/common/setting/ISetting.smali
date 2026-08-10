.class public interface abstract Lcom/transsion/camera/app/common/setting/ISetting;
.super Ljava/lang/Object;
.source "ISetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;
    }
.end annotation


# virtual methods
.method public forceApplyValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public forceUpdateValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract getCurrentCameraId()Ljava/lang/String;
.end method

.method public abstract getCurrentStreamIds()[I
.end method

.method public abstract getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;
.end method

.method public abstract getDefaultValue()Ljava/lang/String;
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getSettingValue()Ljava/lang/String;
.end method

.method public abstract getStoreScope()Ljava/lang/String;
.end method

.method public abstract getSupport()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isModeSupport()Z
.end method

.method public abstract onValueChanged(Ljava/lang/String;)V
.end method

.method public onValueChangedOnly(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public querySupportedEntryValue(Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract queryValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public abstract setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V
.end method

.method public abstract turnOnSwitch(Z)V
.end method
