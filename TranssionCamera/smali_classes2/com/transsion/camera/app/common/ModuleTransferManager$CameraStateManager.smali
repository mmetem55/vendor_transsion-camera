.class public Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;
.super Ljava/lang/Object;
.source "ModuleTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ModuleTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraStateManager"
.end annotation


# instance fields
.field private mOnCameraChangeListener:Lcom/transsion/camera/app/common/ModuleTransferManager$OnCameraChangeListener;

.field private final mSupportModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/camera/app/common/ModuleTransferManager;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ModuleTransferManager;)V
    .locals 13

    .line 166
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;->this$0:Lcom/transsion/camera/app/common/ModuleTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ASDModeEntry"

    const-string v1, "IntentPhotoMode"

    const-string v2, "FaceBeautyModeEntry"

    const-string v3, "MultiFaceBeautyModeEntry"

    const-string v4, "STBlurModeEntry"

    const-string v5, "SuperNightModeEntry"

    const-string v6, "SuperNightFilterModeEntry"

    const-string v7, "HighDefinitionModeEntry"

    const-string v8, "VideoModeEntry"

    const-string v9, "FunVideoModeEntry"

    const-string v10, "SlowMotionModeEntry"

    const-string v11, "TimeLapseVideoModeEntry"

    const-string v12, "MakeUpModeEntry"

    .line 171
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;->mSupportModeList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCameraChangeListener(Lcom/transsion/camera/app/common/ModuleTransferManager$OnCameraChangeListener;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;->mOnCameraChangeListener:Lcom/transsion/camera/app/common/ModuleTransferManager$OnCameraChangeListener;

    return-void
.end method

.method public isCurrentModeSupport()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 204
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;->mSupportModeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;->this$0:Lcom/transsion/camera/app/common/ModuleTransferManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getModeName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;->mSupportModeList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
