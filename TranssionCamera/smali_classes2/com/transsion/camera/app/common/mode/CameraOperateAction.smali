.class public Lcom/transsion/camera/app/common/mode/CameraOperateAction;
.super Ljava/lang/Object;
.source "CameraOperateAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;
    }
.end annotation


# static fields
.field private static final ACTION_BOOLEAN_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTION_BOOLEAN_PREVIEW_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTION_HINT_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTION_STATE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTION_STRING_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TYPE_NO_NEED_TO_RESPOND_EVENT_ACTIONS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mCurrentState:I

.field private mRawActionCallback:Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/mode/CameraOperateAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 216
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction$1;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->ACTION_STATE_MAP:Ljava/util/HashMap;

    .line 233
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction$2;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->ACTION_STRING_MAP:Ljava/util/HashMap;

    .line 320
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction$3;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->ACTION_BOOLEAN_MAP:Ljava/util/HashMap;

    .line 391
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction$4;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction$4;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->ACTION_BOOLEAN_PREVIEW_MAP:Ljava/util/HashMap;

    .line 437
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction$5;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction$5;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->ACTION_HINT_MAP:Ljava/util/HashMap;

    .line 455
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction$6;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction$6;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->TYPE_NO_NEED_TO_RESPOND_EVENT_ACTIONS_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;)V
    .locals 1

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x65

    .line 192
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    .line 566
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mRawActionCallback:Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;

    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .locals 2

    .line 532
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->ACTION_STRING_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 535
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown action ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static filterRespondByState(III)I
    .locals 1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_1

    const/16 p1, 0x66

    if-eq p0, p1, :cond_0

    const/16 p1, 0x67

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p2, 0x1

    :cond_1
    return p2
.end method

.method private firstSteadyFrameNotify()V
    .locals 4

    .line 586
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 587
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    const/16 v1, 0x9

    const/16 v2, -0x65

    if-eq v0, v2, :cond_1

    const/16 v3, 0x6d

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x37

    .line 616
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    .line 617
    iput v2, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    goto :goto_0

    .line 613
    :pswitch_1
    iput v2, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    return-void

    .line 609
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    .line 610
    iput v2, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x14

    .line 605
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    .line 606
    iput v2, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x7

    .line 601
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    .line 602
    iput v2, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    .line 597
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    .line 598
    iput v2, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x3

    .line 593
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    .line 594
    iput v2, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x1

    .line 589
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    .line 590
    iput v2, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    goto :goto_0

    .line 620
    :cond_0
    iput v2, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    .line 621
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    goto :goto_0

    .line 624
    :cond_1
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static needStopPressedAnimation(I)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x52

    if-eq p0, v0, :cond_1

    const/16 v0, 0x90

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4d

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private notifyOperateAction(I)V
    .locals 0

    .line 570
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mRawActionCallback:Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;

    if-eqz p0, :cond_0

    .line 571
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;->onAction(I)V

    :cond_0
    return-void
.end method

.method public static respondHintEvent(I)I
    .locals 2

    .line 516
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->ACTION_HINT_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static respondPreviewManagerEvent(I)I
    .locals 2

    .line 508
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->ACTION_BOOLEAN_PREVIEW_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static respondUIManagerEvent(II)I
    .locals 4

    .line 487
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->ACTION_BOOLEAN_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 491
    sget-object v2, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->TYPE_NO_NEED_TO_RESPOND_EVENT_ACTIONS_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 492
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, [I

    :cond_1
    if-eqz v0, :cond_3

    const/4 p0, 0x0

    .line 495
    :goto_0
    array-length v2, v0

    if-ge p0, v2, :cond_3

    .line 496
    aget v2, v0, p0

    if-ne v2, p1, :cond_2

    return v1

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 502
    :cond_3
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->ACTION_BOOLEAN_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private switchNeedToHandleActionBegin(II)V
    .locals 3

    .line 576
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchNeedToHandleActionBegin state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 577
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    const/16 v1, -0x65

    if-eq v0, v1, :cond_0

    if-eq p1, v1, :cond_0

    const/16 v0, 0xa5

    if-ne p2, v0, :cond_1

    .line 578
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_1

    .line 579
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    .line 580
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentActionState()I
    .locals 0

    .line 213
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    return p0
.end method

.method public rawActionHandle(I)V
    .locals 2

    .line 541
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->ACTION_STATE_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->switchNeedToHandleActionBegin(II)V

    return-void

    :cond_0
    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    .line 558
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    const/16 v1, 0x68

    if-eq v0, v1, :cond_4

    .line 559
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    goto :goto_0

    .line 550
    :cond_1
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    const/16 v1, 0x69

    if-eq v0, v1, :cond_4

    .line 551
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    goto :goto_0

    .line 547
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->firstSteadyFrameNotify()V

    goto :goto_0

    .line 555
    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    :cond_4
    :goto_0
    return-void
.end method
