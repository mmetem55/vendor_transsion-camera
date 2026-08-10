.class Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;
.super Ljava/lang/Object;
.source "STBlurConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;
    }
.end annotation


# instance fields
.field private mFrontCamera:Z

.field private mHasFace:Z

.field private mSTBlurOn:Z


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;->access$000(Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;->mFrontCamera:Z

    .line 22
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;->access$100(Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;->mHasFace:Z

    .line 23
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;->access$200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;->mSTBlurOn:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;-><init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig$Build;)V

    return-void
.end method


# virtual methods
.method public isFrontCamera()Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;->mFrontCamera:Z

    return p0
.end method

.method public isHasFace()Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;->mHasFace:Z

    return p0
.end method

.method public isSTBlurOn()Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;->mSTBlurOn:Z

    return p0
.end method
