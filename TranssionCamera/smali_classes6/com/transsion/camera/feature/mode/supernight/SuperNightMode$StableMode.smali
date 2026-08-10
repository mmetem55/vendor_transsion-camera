.class Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;
.super Ljava/lang/Object;
.source "SuperNightMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StableMode"
.end annotation


# instance fields
.field private mIsPaused:Z

.field private mStableMonitor:Lcom/transsion/camera/gsensor/StableMonitor;

.field private final mStableStatusCallback:Lcom/transsion/camera/gsensor/IStableMonitor$IStatusCallback;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;


# direct methods
.method public static synthetic $r8$lambda$P-Rx81sAciiAsVrD7Pox8FQFSDs(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->onStableStatusChanged(I)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V
    .locals 1

    .line 592
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 590
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mIsPaused:Z

    .line 647
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableStatusCallback:Lcom/transsion/camera/gsensor/IStableMonitor$IStatusCallback;

    .line 593
    new-instance v0, Lcom/transsion/camera/gsensor/StableMonitor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/transsion/camera/gsensor/StableMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableMonitor:Lcom/transsion/camera/gsensor/StableMonitor;

    return-void
.end method

.method private hideAllHint()V
    .locals 2

    .line 665
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$1300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 666
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$1400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 667
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$1500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private onStableStatusChanged(I)V
    .locals 3

    .line 650
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStableStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/gsensor/IStableMonitor;->statusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCaptureFlow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    .line 651
    invoke-static {v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", IsPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mIsPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 650
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 652
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mIsPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 656
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 657
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$1000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    .line 659
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$1100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 660
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$1200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method init()V
    .locals 3

    .line 597
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    sget v2, Lcom/transsion/camera/feature/supernight/R$string;->super_night_stable_opened_tips:I

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    sget v2, Lcom/transsion/camera/feature/supernight/R$string;->super_night_stable_enter_tips:I

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 601
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 603
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    sget v2, Lcom/transsion/camera/feature/supernight/R$string;->super_night_in_stable_tips:I

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableMonitor:Lcom/transsion/camera/gsensor/StableMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/gsensor/StableMonitor;->init()V

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableMonitor:Lcom/transsion/camera/gsensor/StableMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableStatusCallback:Lcom/transsion/camera/gsensor/IStableMonitor$IStatusCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/gsensor/StableMonitor;->setStatusCallback(Lcom/transsion/camera/gsensor/IStableMonitor$IStatusCallback;)V

    return-void
.end method

.method isStable()Z
    .locals 1

    .line 644
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableMonitor:Lcom/transsion/camera/gsensor/StableMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/gsensor/StableMonitor;->getLastStatus()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method onClosed()V
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableMonitor:Lcom/transsion/camera/gsensor/StableMonitor;

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {v0}, Lcom/transsion/camera/gsensor/StableMonitor;->stop()V

    .line 627
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->hideAllHint()V

    const/4 v0, 0x0

    .line 628
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mIsPaused:Z

    return-void
.end method

.method onOpened()V
    .locals 2

    .line 616
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 617
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableMonitor:Lcom/transsion/camera/gsensor/StableMonitor;

    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {v0}, Lcom/transsion/camera/gsensor/StableMonitor;->start()V

    :cond_0
    const/4 v0, 0x0

    .line 620
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mIsPaused:Z

    return-void
.end method

.method pause()V
    .locals 1

    const/4 v0, 0x1

    .line 632
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mIsPaused:Z

    .line 633
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->hideAllHint()V

    return-void
.end method

.method resume()V
    .locals 2

    .line 637
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableMonitor:Lcom/transsion/camera/gsensor/StableMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/gsensor/StableMonitor;->getLastStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 638
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    const/4 v0, 0x0

    .line 640
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mIsPaused:Z

    return-void
.end method

.method unInit()V
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableMonitor:Lcom/transsion/camera/gsensor/StableMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/gsensor/StableMonitor;->setStatusCallback(Lcom/transsion/camera/gsensor/IStableMonitor$IStatusCallback;)V

    .line 611
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableMonitor:Lcom/transsion/camera/gsensor/StableMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/gsensor/StableMonitor;->unInit()V

    .line 612
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableMonitor:Lcom/transsion/camera/gsensor/StableMonitor;

    return-void
.end method
