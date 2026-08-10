.class Lcom/transsion/camera/app/ui/BaseAppUI$2;
.super Ljava/lang/Object;
.source "BaseAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scrollStarted()V
    .locals 2

    .line 366
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "scrollStarted."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hide()V

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_2

    .line 374
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->restoreInteractiveView()V

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    if-eqz v0, :cond_3

    .line 378
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;->hideModeUI()V

    .line 380
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/16 v0, 0x34

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public scrollStopped(I)V
    .locals 3

    .line 391
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollStopped, index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cur index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget v2, v2, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollModeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$600(Lcom/transsion/camera/app/ui/BaseAppUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollModeIndex:I

    if-ne v1, p1, :cond_2

    .line 395
    iget-object p1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_0

    .line 396
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 398
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_1

    .line 399
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->show()V

    .line 401
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    if-eqz p1, :cond_2

    .line 402
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;->showModeUI()V

    .line 405
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_3

    .line 406
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->show()V

    :cond_3
    return-void
.end method

.method public updateScrollIndex(I)V
    .locals 3

    .line 385
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateScrollIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 386
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollModeIndex:I

    return-void
.end method
