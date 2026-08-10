.class public interface abstract Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;
.super Ljava/lang/Object;
.source "ISettingItemUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IItemCallBack"
.end annotation


# virtual methods
.method public abstract onItemClick(Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;ZZ)V
.end method

.method public abstract onItemClickBefore(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
.end method

.method public abstract onItemValueChange(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;)V
.end method

.method public abstract onPopupBarActionDown()V
.end method

.method public abstract onPopupBarActionUp()V
.end method

.method public abstract onPopupBarDissmiss(Z)V
.end method

.method public abstract onPopupBarShow()V
.end method

.method public abstract onSeekBarActionDown()V
.end method

.method public abstract onSeekBarActionUp(ZZZ)V
.end method
