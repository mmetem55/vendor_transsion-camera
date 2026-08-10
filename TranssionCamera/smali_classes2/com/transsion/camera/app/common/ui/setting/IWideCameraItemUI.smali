.class public interface abstract Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;
.super Ljava/lang/Object;
.source "IWideCameraItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IRootUI;
.implements Lcom/transsion/camera/app/common/ui/setting/ISettingUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$ILongClickDetection;,
        Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;
    }
.end annotation


# virtual methods
.method public abstract createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;
.end method

.method public abstract getEntryViewType()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;
.end method

.method public abstract needShowEntryView()Z
.end method

.method public abstract overrideClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract pause()V
.end method

.method public abstract restoreDefaultValue()V
.end method

.method public abstract setSecondZoomDefaultValue(I)V
.end method

.method public abstract updateEntryValue(Ljava/lang/String;)V
.end method

.method public abstract updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V
.end method
