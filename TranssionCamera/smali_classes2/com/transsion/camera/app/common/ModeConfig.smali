.class public Lcom/transsion/camera/app/common/ModeConfig;
.super Ljava/lang/Object;
.source "ModeConfig.java"


# instance fields
.field public final mFrontWideCameraSupport:Z

.field public final mMacroCameraSupport:Z

.field public final mSatSupport:Z

.field public final mTeleCameraSupport:Z

.field public final mVideoCameraSupport:Z

.field public final mWideCameraEntries:[Ljava/lang/String;

.field public final mWideCameraSupport:Z


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportWideCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeConfig;->mWideCameraSupport:Z

    .line 30
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportFrontWideCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeConfig;->mFrontWideCameraSupport:Z

    .line 31
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportMacroCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeConfig;->mMacroCameraSupport:Z

    .line 32
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportVideoCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeConfig;->mVideoCameraSupport:Z

    .line 33
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportTeleCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeConfig;->mTeleCameraSupport:Z

    .line 34
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportSat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeConfig;->mSatSupport:Z

    if-eqz p2, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getWideCameraSettingUIEntries()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeConfig;->mWideCameraEntries:[Ljava/lang/String;

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getFrontWideCameraSettingUIEntries()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeConfig;->mWideCameraEntries:[Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModeSupportConfig{mWideCameraSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ModeConfig;->mWideCameraSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFrontWideCameraSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ModeConfig;->mFrontWideCameraSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMacroCameraSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ModeConfig;->mMacroCameraSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoCameraSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ModeConfig;->mVideoCameraSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTeleCameraSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ModeConfig;->mTeleCameraSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mWideCameraEntries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ModeConfig;->mWideCameraEntries:[Ljava/lang/String;

    .line 51
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSatSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeConfig;->mSatSupport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
