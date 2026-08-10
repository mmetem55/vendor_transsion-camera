.class Lcom/transsion/camera/app/BaseCameraActivity$3;
.super Ljava/lang/Object;
.source "BaseCameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/BaseCameraActivity;->initAppStorageManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$3;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerFinished()V
    .locals 2

    .line 528
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->access$800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "loadLatestThumbnail when onMediaScannerFinished."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 529
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$3;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->loadLatestThumbnail()V

    return-void
.end method

.method public onOperatorChanged(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$3;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object v0, v0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 522
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$3;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->showExternalStorageUnmountedTip()V

    :cond_0
    return-void
.end method

.method public onSDCardMounted()V
    .locals 0

    .line 534
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$3;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->exitAllFragments()V

    return-void
.end method

.method public onSDCardUnMounted()V
    .locals 0

    .line 539
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$3;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->exitAllFragments()V

    return-void
.end method
