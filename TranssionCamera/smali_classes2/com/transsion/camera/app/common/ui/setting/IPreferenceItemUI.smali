.class public interface abstract Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;
.super Ljava/lang/Object;
.source "IPreferenceItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/ISettingUI;


# virtual methods
.method public abstract createPreference(Landroid/content/Context;)Landroid/preference/Preference;
.end method

.method public abstract init()V
.end method

.method public abstract setIsSellingPoint(Z)V
.end method

.method public abstract setPointRes(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setSettingFragmentControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;)V
.end method
