.class public interface abstract Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView;
.super Ljava/lang/Object;
.source "ISeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;,
        Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;
    }
.end annotation


# virtual methods
.method public abstract dismiss()V
.end method

.method public abstract isShowing()Z
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setSeekIntervalType(Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;)V
.end method

.method public abstract setVisibility(I)V
.end method

.method public abstract showIfNeed(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;)Z
.end method

.method public abstract updateValue(Ljava/lang/String;)V
.end method
