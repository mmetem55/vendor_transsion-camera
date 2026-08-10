.class Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;
.super Ljava/lang/Object;
.source "AODModeScrollUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/scroll/IScrollOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AODModeScrollUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation270;,
        Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation180;,
        Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation90;,
        Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation0;,
        Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;,
        Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$OrientationRepo;
    }
.end annotation


# instance fields
.field private final SCROLL_THRESHOLD:I

.field private mCurrentOrientation:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;

.field private final mOrientationRepo:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$OrientationRepo;

.field private final mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

.field private mStartScroll:Z

.field final synthetic this$0:Lcom/transsion/camera/app/ui/AODModeScrollUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AODModeScrollUI;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/ui/ScrollConsumer;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->this$0:Lcom/transsion/camera/app/ui/AODModeScrollUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iput-object p3, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 503
    new-instance p1, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$OrientationRepo;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$OrientationRepo;-><init>(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;Lcom/transsion/camera/app/ui/AODModeScrollUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->mOrientationRepo:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$OrientationRepo;

    .line 504
    invoke-interface {p2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->SCROLL_THRESHOLD:I

    const/4 p1, 0x0

    .line 505
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->updateOrientation(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AODModeScrollUI;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/ui/AODModeScrollUI$1;)V
    .locals 0

    .line 486
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;-><init>(Lcom/transsion/camera/app/ui/AODModeScrollUI;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/ui/ScrollConsumer;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;II)Landroid/animation/Animator;
    .locals 0

    .line 486
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->createEnterAnimator(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;II)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->mCurrentOrientation:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;)Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->mCurrentOrientation:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)Lcom/transsion/camera/app/ui/ScrollConsumer;
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)I
    .locals 0

    .line 486
    iget p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->SCROLL_THRESHOLD:I

    return p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)Z
    .locals 0

    .line 486
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->canScrollToNext()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)Z
    .locals 0

    .line 486
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->mStartScroll:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;Z)Z
    .locals 0

    .line 486
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->mStartScroll:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)Z
    .locals 0

    .line 486
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->canScrollToPrevious()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;I)V
    .locals 0

    .line 486
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->updateOrientation(I)V

    return-void
.end method

.method private canScrollToNext()Z
    .locals 2

    .line 551
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->this$0:Lcom/transsion/camera/app/ui/AODModeScrollUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->canScrollToNext()Z

    move-result p0

    if-nez p0, :cond_0

    .line 553
    invoke-static {}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "can not ScrollToNext"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method private canScrollToPrevious()Z
    .locals 2

    .line 559
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->this$0:Lcom/transsion/camera/app/ui/AODModeScrollUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->canScrollToPrevious()Z

    move-result p0

    if-nez p0, :cond_0

    .line 561
    invoke-static {}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "can not ScrollToPrevious"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method private canScrolling()Z
    .locals 2

    .line 543
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->this$0:Lcom/transsion/camera/app/ui/AODModeScrollUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->canScrolling()Z

    move-result p0

    if-nez p0, :cond_0

    .line 545
    invoke-static {}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "can not Scrolling"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method private createEnterAnimator(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;II)Landroid/animation/Animator;
    .locals 0

    .line 513
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->mCurrentOrientation:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->createEnterAnimator(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;II)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private updateOrientation(I)V
    .locals 0

    .line 509
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->mOrientationRepo:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$OrientationRepo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$OrientationRepo;->access$1600(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$OrientationRepo;I)Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->entry()V

    return-void
.end method


# virtual methods
.method public down(FF)V
    .locals 0

    const/4 p1, 0x0

    .line 518
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->mStartScroll:Z

    return-void
.end method

.method public pulling(FF)Z
    .locals 2

    .line 523
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->mStartScroll:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->canScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    invoke-static {}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "return pulling mStartPull = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->mStartScroll:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " canScrolling = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->canScrolling()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 524
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 528
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->mCurrentOrientation:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->scroll(FF)V

    return v1
.end method

.method public stopPulling()Z
    .locals 2

    .line 534
    invoke-static {}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "stopPulling"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 535
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->mStartScroll:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 536
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->mStartScroll:Z

    .line 537
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->this$0:Lcom/transsion/camera/app/ui/AODModeScrollUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->stopScroll()V

    :cond_0
    return v1
.end method
